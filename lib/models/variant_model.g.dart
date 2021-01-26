// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariantModel _$VariantModelFromJson(Map<String, dynamic> json) {
  return VariantModel(
    sku: json['sku'] as String,
    price: json['price'] as String,
    currency: json['currency'] as String,
    displayCompareAtPrice: json['display_compare_at_price'] as String,
    displayPrice: json['display_price'] as String,
    weight: json['weight'] as String,
    height: json['height'] as String,
    width: json['width'] as String,
    depth: json['depth'] as String,
    optionsText: json['options_text'] as String,
    id: json['id'] as String,
    relationships: json['relationships'] as Map<String, dynamic>,
    included: json['included'] as List,
  )
    ..isMaster = json['is_master'] as bool
    ..purchasable = json['purchasable'] as bool
    ..inStock = json['in_stock'] as bool
    ..backorderable = json['backorderable'] as bool;
}

Map<String, dynamic> _$VariantModelToJson(VariantModel instance) => <String, dynamic>{
      'id': instance.id,
      'relationships': instance.relationships,
      'included': instance.included,
      'sku': instance.sku,
      'price': instance.price,
      'currency': instance.currency,
      'display_compare_at_price': instance.displayCompareAtPrice,
      'display_price': instance.displayPrice,
      'weight': instance.weight,
      'height': instance.height,
      'width': instance.width,
      'depth': instance.depth,
      'is_master': instance.isMaster,
      'options_text': instance.optionsText,
      'purchasable': instance.purchasable,
      'in_stock': instance.inStock,
      'backorderable': instance.backorderable,
    };
