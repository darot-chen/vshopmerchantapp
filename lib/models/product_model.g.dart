// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return ProductModel(
    name: json['name'] as String,
    description: json['description'] as String,
    price: json['price'] as String,
    currency: json['currency'] as String,
    displayCompareAtPrice: json['display_compare_at_price'] as String,
    compareAtPrice: json['compare_at_price'] as String,
    displayPrice: json['display_price'] as String,
    availableOn: json['available_on'] as String,
    purchasable: json['purchasable'] as bool,
    inStock: json['in_stock'] as bool,
    backorderable: json['backorderable'] as bool,
    slug: json['slug'] as String,
    metaDescription: json['meta_description'] as String,
    metaKeywords: json['meta_keywords'] as String,
    updatedAt: json['updated_at'] as String,
    id: json['id'] as String,
    relationships: json['relationships'] as Map<String, dynamic>,
    included: json['included'] as List,
  );
}

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) => <String, dynamic>{
      'id': instance.id,
      'relationships': instance.relationships,
      'included': instance.included,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'currency': instance.currency,
      'display_compare_at_price': instance.displayCompareAtPrice,
      'compare_at_price': instance.compareAtPrice,
      'display_price': instance.displayPrice,
      'available_on': instance.availableOn,
      'purchasable': instance.purchasable,
      'in_stock': instance.inStock,
      'backorderable': instance.backorderable,
      'slug': instance.slug,
      'meta_description': instance.metaDescription,
      'meta_keywords': instance.metaKeywords,
      'updated_at': instance.updatedAt,
    };
