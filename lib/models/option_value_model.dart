import 'package:json_annotation/json_annotation.dart';
import 'package:vtenhappmerchant/models/base_model.dart';
part 'option_value_model.g.dart';

@JsonSerializable(nullable: false)
class OptionValueModel extends BaseModel {
  String name;
  String presentation;
  int position;

  OptionValueModel({
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
  factory OptionValueModel.fromJson(Map<String, dynamic> json) => _$OptionValueModelFromJson(json);

  Map<String, dynamic> toJson() => _$OptionValueModelToJson(this);
}
