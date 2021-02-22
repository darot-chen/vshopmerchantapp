// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taxons_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaxonsModel _$TaxonsModelFromJson(Map<String, dynamic> json) {
  return TaxonsModel(
    name: json['name'] as String,
    prettyName: json['pretty_name'] as String,
    permalink: json['permalink'] as String,
    seoTitle: json['seo_title'] as String,
    description: json['description'] as String,
    metaTitle: json['meta_title'] as String,
    metaDescription: json['meta_description'] as String,
    metaKeywords: json['meta_keywords'] as String,
    left: json['left'] as int,
    right: json['right'] as int,
    position: json['position'] as int,
    depth: json['depth'] as int,
    isRoot: json['is_root'] as bool,
    isChild: json['is_child'] as bool,
    isLeaf: json['is_leaf'] as bool,
    updateAt: json['update_at'] as String,
    id: json['id'] as String,
    relationships: json['relationships'] as Map<String, dynamic>,
    included: json['included'] as List,
  );
}

Map<String, dynamic> _$TaxonsModelToJson(TaxonsModel instance) => <String, dynamic>{
      'id': instance.id,
      'relationships': instance.relationships,
      'included': instance.included,
      'name': instance.name,
      'pretty_name': instance.prettyName,
      'permalink': instance.permalink,
      'seo_title': instance.seoTitle,
      'description': instance.description,
      'meta_title': instance.metaTitle,
      'meta_description': instance.metaDescription,
      'meta_keywords': instance.metaKeywords,
      'left': instance.left,
      'right': instance.right,
      'position': instance.position,
      'depth': instance.depth,
      'is_root': instance.isRoot,
      'is_child': instance.isChild,
      'is_leaf': instance.isLeaf,
      'update_at': instance.updateAt,
    };
