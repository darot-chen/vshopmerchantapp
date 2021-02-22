import 'package:json_annotation/json_annotation.dart';
import 'package:vtenhappmerchant/mixins/json_mappable.dart';
import 'package:vtenhappmerchant/models/base_model.dart';
import 'package:vtenhappmerchant/models/product_model.dart';

part 'taxons_model.g.dart';

@JsonSerializable(nullable: false)
class TaxonsModel extends BaseModel with JsonMappable {
  String name;
  @JsonKey(name: 'pretty_name', nullable: false)
  String prettyName;
  String permalink;
  @JsonKey(name: 'seo_title', nullable: false)
  String seoTitle;
  String description;
  @JsonKey(name: 'meta_title', nullable: false)
  String metaTitle;
  @JsonKey(name: 'meta_description', nullable: false)
  String metaDescription;
  @JsonKey(name: 'meta_keywords', nullable: false)
  String metaKeywords;
  int left;
  int right;
  int position;
  int depth;
  @JsonKey(name: 'is_root', nullable: false)
  bool isRoot;
  @JsonKey(name: 'is_child', nullable: false)
  bool isChild;
  @JsonKey(name: 'is_leaf', nullable: false)
  bool isLeaf;
  @JsonKey(name: 'update_at', nullable: false)
  String updateAt;

  TaxonsModel({
    this.name,
    this.prettyName,
    this.permalink,
    this.seoTitle,
    this.description,
    this.metaTitle,
    this.metaDescription,
    this.metaKeywords,
    this.left,
    this.right,
    this.position,
    this.depth,
    this.isRoot,
    this.isChild,
    this.isLeaf,
    this.updateAt,
    String id,
    Map<String, dynamic> relationships,
    List<dynamic> included,
  }) : super(id: id, relationships: relationships, included: included) {
    if (this.included != null && super.included.length > 0) {
      setTaxon();
      setParentImage();
      setChilrenImage();
    }
  }

  List<TaxonsModel> _taxonChildren = [];
  List<ProductModel> _taxonProducts = [];

  List<String> _parentImages = [];
  Map<String, List<String>> _imagesFromImageID = {};
  Map<String, List<String>> _imagesFromTaxonID = {};

  setParentImage() {
    var image = this.relationships['image'];
    if (image != null && image['data'] != null) {
      var parentImageID = image['data']['id'];
      if (parentImageID != null) {
        _parentImages = _imagesFromImageID[parentImageID];
      }
    }
  }

  setChilrenImage() {
    if (_taxonChildren != null && _taxonChildren.length > 0) {
      _taxonChildren.forEach(
        (taxonChild) {
          var image = this.relationships['image'];
          if (image != null && image['data'] != null) {
            var taxonChildImageID = image['data']['id'];
            if (taxonChildImageID != null) {
              var childImages = _imagesFromImageID[taxonChildImageID];
              if (childImages != null) {
                _imagesFromTaxonID[taxonChild.id] = childImages;
              }
            }
          }
        },
      );
    }
  }

  setTaxon() {
    List<TaxonsModel> _taxonChildrenTMP = [];
    List<ProductModel> _taxonProductsTMP = [];
    super.included.forEach(
      (element) {
        //set taxons from include
        if (element != null && element['type'] == "taxon") {
          var item = mergeAttr(element);
          var result = TaxonsModel.fromJson(item);
          if (result != null) {
            _taxonChildrenTMP.add(result);
          }
        }

        //set images from include
        else if (element['type'] == "taxon_image") {
          print('taxon_image');
          String elementID = element['id'];
          List<String> result = [];
          element['attributes']['styles'].forEach(
            (e) {
              var url = e['url'];
              if (url != null) {
                result.add(url.toString());
              }
            },
          );
          if (result != null && result.length > 0) {
            _imagesFromImageID[elementID] = result;
          }
        }

        //set product from include if it is leaf
        else if (this.isLeaf && element['type'] == "product") {
          print('product');
          var item = mergeAttr(element);
          var result = ProductModel.fromJson(item);
          if (result != null) {
            _taxonProductsTMP.add(result);
          }
        }
      },
    );

    if (_taxonChildrenTMP != null) {
      this._taxonChildren = _taxonChildrenTMP;
    }
    if (this.isLeaf && _taxonProductsTMP != null) {
      this._taxonProducts = _taxonProductsTMP;
    }
  }

  List<TaxonsModel> get taxonChildren => _taxonChildren;
  List<ProductModel> get taxonProducts => _taxonProducts;
  List<String> get parentImages => _parentImages;
  Map<String, List<String>> get imagesFromImageID => _imagesFromImageID;
  Map<String, List<String>> get imagesFromTaxonID => _imagesFromTaxonID;

  factory TaxonsModel.fromJson(Map<String, dynamic> json) => _$TaxonsModelFromJson(json);
  Map<String, dynamic> toJson() => _$TaxonsModelToJson(this);
}
