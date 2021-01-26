// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_property_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductPropertyModel _$ProductPropertyModelFromJson(Map<String, dynamic> json) {
  return ProductPropertyModel(
    name: json['name'] as String,
    value: json['value'] as String,
    description: json['description'] as String,
    id: json['id'] as String,
    relationships: json['relationships'] as Map<String, dynamic>,
    included: json['included'] as List,
  );
}

Map<String, dynamic> _$ProductPropertyModelToJson(ProductPropertyModel instance) => <String, dynamic>{
      'id': instance.id,
      'relationships': instance.relationships,
      'included': instance.included,
      'name': instance.name,
      'value': instance.value,
      'description': instance.description,
    };
