import 'package:json_annotation/json_annotation.dart';
part 'meta_model.g.dart';

@JsonSerializable(nullable: false)
class MetaModel {
  int count;
  @JsonKey(name: 'total_count', nullable: false)
  int totalCount;
  @JsonKey(name: 'total_pages', nullable: false)
  int totalPages;

  MetaModel({this.count, this.totalCount, this.totalPages});
  factory MetaModel.fromJson(Map<String, dynamic> json) => _$MetaModelFromJson(json);

  Map<String, dynamic> toJson() => _$MetaModelToJson(this);
}
