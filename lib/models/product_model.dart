import 'package:json_annotation/json_annotation.dart';
import 'package:vtenhappmerchant/mixins/json_mappable.dart';
import 'package:vtenhappmerchant/models/base_model.dart';

part 'product_model.g.dart';

@JsonSerializable(nullable: false)
class ProductModel extends BaseModel with JsonMappable {
  String name;
  String description;
  String price;
  String currency;
  @JsonKey(name: 'display_compare_at_price', nullable: false)
  String displayCompareAtPrice;
  @JsonKey(name: 'compare_at_price', nullable: false)
  String compareAtPrice;
  @JsonKey(name: 'display_price', nullable: false)
  String displayPrice;
  @JsonKey(name: 'available_on', nullable: false)
  String availableOn;
  bool purchasable;
  @JsonKey(name: 'in_stock', nullable: false)
  bool inStock;
  bool backorderable;
  String slug;
  @JsonKey(name: 'meta_description', nullable: false)
  String metaDescription;
  @JsonKey(name: 'meta_keywords', nullable: false)
  String metaKeywords;
  @JsonKey(name: 'updated_at', nullable: false)
  String updatedAt;

  ProductModel({
    this.name,
    this.description,
    this.price,
    this.currency,
    this.displayCompareAtPrice,
    this.compareAtPrice,
    this.displayPrice,
    this.availableOn,
    this.purchasable,
    this.inStock,
    this.backorderable,
    this.slug,
    this.metaDescription,
    this.metaKeywords,
    this.updatedAt,
    String id,
    Map<String, dynamic> relationships,
    List<dynamic> included,
  }) : super(id: id, relationships: relationships, included: included);

  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}
