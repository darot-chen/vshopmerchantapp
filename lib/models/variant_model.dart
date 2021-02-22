import 'package:json_annotation/json_annotation.dart';
import 'package:vtenhappmerchant/models/base_model.dart';

part 'variant_model.g.dart';

@JsonSerializable(nullable: false)
class VariantModel extends BaseModel {
  String sku;
  String price;
  String currency;
  @JsonKey(name: 'display_compare_at_price', nullable: false)
  String displayCompareAtPrice;
  @JsonKey(name: 'display_price', nullable: false)
  String displayPrice;
  String weight;
  String height;
  String width;
  String depth;

  @JsonKey(name: 'is_master', nullable: false)
  bool isMaster;

  @JsonKey(name: 'options_text', nullable: false)
  String optionsText;
  bool purchasable;

  @JsonKey(name: 'in_stock', nullable: false)
  bool inStock;
  bool backorderable;

  VariantModel({
    this.sku,
    this.price,
    this.currency,
    this.displayCompareAtPrice,
    this.displayPrice,
    this.weight,
    this.height,
    this.width,
    this.depth,
    this.optionsText,
    String id,
    Map<String, dynamic> relationships,
    List<dynamic> included,
  }) : super(id: id, relationships: relationships, included: included);

  factory VariantModel.fromJson(Map<String, dynamic> json) => _$VariantModelFromJson(json);
  Map<String, dynamic> toJson() => _$VariantModelToJson(this);
}
