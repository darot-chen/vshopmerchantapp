import 'package:json_annotation/json_annotation.dart';
import 'package:vtenhappmerchant/models/base_model.dart';
part 'product_property_model.g.dart';

@JsonSerializable(nullable: false)
class ProductPropertyModel extends BaseModel {
  String name;
  String value;
  String description;

  ProductPropertyModel({
    this.name,
    this.value,
    this.description,
    String id,
    Map<String, dynamic> relationships,
    List<dynamic> included,
  }) : super(id: id, relationships: relationships, included: included);
  factory ProductPropertyModel.fromJson(Map<String, dynamic> json) => _$ProductPropertyModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductPropertyModelToJson(this);
}
