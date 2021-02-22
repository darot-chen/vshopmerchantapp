import 'package:json_annotation/json_annotation.dart';
import 'package:vtenhappmerchant/models/base_model.dart';

part 'country_model.g.dart';

@JsonSerializable(nullable: false)
class CountryModel extends BaseModel {
  String iso;
  String iso3;
  String name;

  @JsonKey(name: 'iso_name', nullable: false)
  String isoName;
  @JsonKey(name: 'states_required', nullable: false)
  bool statesRequired;
  @JsonKey(name: 'zipcode_required', nullable: false)
  bool zipcodeRequired;

  @JsonKey(name: 'default', nullable: false)
  bool isDefault;

  CountryModel({
    String id,
    this.iso,
    this.iso3,
    this.isoName,
    this.name,
    this.statesRequired,
    this.zipcodeRequired,
    this.isDefault,
  }) : super(id: id);

  factory CountryModel.fromJson(Map<String, dynamic> json) => _$CountryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CountryModelToJson(this);
}
