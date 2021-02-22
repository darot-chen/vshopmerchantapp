import 'package:vtenhappmerchant/models/base_list_model.dart';

class ProductListModel extends BaseListModel {
  ProductListModel({
    items,
    meta,
    links,
    included,
  }) : super(items: items, meta: meta, links: links, included: included) {
    setImageList();
  }

  List<dynamic> _displayImages = [];

  ///``Map<imageid, imaegUrl[middle index]>``
  Map<dynamic, dynamic> _allImages = {};
  Map<dynamic, dynamic> _imagesIDFromVariant = {};
  Map<dynamic, dynamic> _defaultVariantListMapID = {};
  Map<dynamic, dynamic> _productsVariantListIDMap = {};

  setImagesFromOutside({List<dynamic> images}) {
    this._displayImages = images;
  }

  setImageList() {
    items.forEach((element) {
      var defaultVariantID = element.relationships['default_variant']['data']['id'];
      this._defaultVariantListMapID[element.id] = defaultVariantID;

      var variantsData = element.relationships['variants']['data'];
      this._productsVariantListIDMap[element.id] = variantsData.map((data) {
        return data['id'];
      }).toList();
    });

    if (this.included != null) {
      this.included.forEach(
        (element) {
          if (element['type'] == 'image') {
            var imageID = element['id'];
            var style = element['attributes']['styles'];
            if (style != null) {
              _allImages[imageID] = style[style.length ~/ 2]['url'];
            }
          }
          if (element['type'] == 'variant') {
            var variantID = element['id'];
            var imageData = element['relationships']['images']['data'];
            if (imageData != null && imageData.length > 0) {
              _imagesIDFromVariant[variantID] = imageData[0]['id'];
            }
          }
        },
      );
    }

    _displayImages = items.map((e) {
      var defaultVariantID = this._defaultVariantListMapID[e.id];
      var imageID = _imagesIDFromVariant[defaultVariantID];
      //get image from default variant
      if (imageID != null && _allImages[imageID] != null) {
        return _allImages[imageID];
      } else {
        //get image from other variant
        for (var variantID in _productsVariantListIDMap[e.id]) {
          var _imageID = _imagesIDFromVariant[variantID];
          if (_imageID != null && _allImages[_imageID] != null) {
            var image = _allImages[_imageID];
            return image;
          }
        }
      }
    }).toList();
  }

  List<dynamic> get images => this._displayImages;
  Map<dynamic, dynamic> get imagesIDFromVariant => this._imagesIDFromVariant;
}
