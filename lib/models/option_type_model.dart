import 'package:json_annotation/json_annotation.dart';
import 'package:vtenhappmerchant/models/base_model.dart';
part 'option_type_model.g.dart';

@JsonSerializable(nullable: false)
class OptionTypeModel extends BaseModel {
  String name;
  String presentation;
  int position;

  OptionTypeModel({
    this.name,
    this.presentation,
    this.position,
    String id,
    Map<String, dynamic> relationships,
    List<dynamic> included,
  }) : super(
          id: id,
          relationships: relationships,
          included: included,
        );
  factory OptionTypeModel.fromJson(Map<String, dynamic> json) => _$OptionTypeModelFromJson(json);

  Map<String, dynamic> toJson() => _$OptionTypeModelToJson(this);
}
