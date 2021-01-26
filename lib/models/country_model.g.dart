// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountryModel _$CountryModelFromJson(Map<String, dynamic> json) {
  return CountryModel(
    id: json['id'] as String,
    iso: json['iso'] as String,
    iso3: json['iso3'] as String,
    isoName: json['iso_name'] as String,
    name: json['name'] as String,
    statesRequired: json['states_required'] as bool,
    zipcodeRequired: json['zipcode_required'] as bool,
    isDefault: json['default'] as bool,
  )
    ..relationships = json['relationships'] as Map<String, dynamic>
    ..included = json['included'] as List;
}

Map<String, dynamic> _$CountryModelToJson(CountryModel instance) => <String, dynamic>{
      'id': instance.id,
      'relationships': instance.relationships,
      'included': instance.included,
      'iso': instance.iso,
      'iso3': instance.iso3,
      'name': instance.name,
      'iso_name': instance.isoName,
      'states_required': instance.statesRequired,
      'zipcode_required': instance.zipcodeRequired,
      'default': instance.isDefault,
    };
