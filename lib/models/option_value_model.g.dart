// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'option_value_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OptionValueModel _$OptionValueModelFromJson(Map<String, dynamic> json) {
  return OptionValueModel(
    name: json['name'] as String,
    presentation: json['presentation'] as String,
    position: json['position'] as int,
    id: json['id'] as String,
    relationships: json['relationships'] as Map<String, dynamic>,
    included: json['included'] as List,
  );
}

Map<String, dynamic> _$OptionValueModelToJson(OptionValueModel instance) => <String, dynamic>{
      'id': instance.id,
      'relationships': instance.relationships,
      'included': instance.included,
      'name': instance.name,
      'presentation': instance.presentation,
      'position': instance.position,
    };
