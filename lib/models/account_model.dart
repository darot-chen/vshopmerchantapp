import 'package:json_annotation/json_annotation.dart';
import 'package:vtenhappmerchant/models/base_model.dart';

part 'account_model.g.dart';

@JsonSerializable(nullable: false)
class AccountModel extends BaseModel {
  String id;
  String login;
  String email;
  String username;
  @JsonKey(name: 'phone_number', nullable: false)
  String phoneNumber;
  @JsonKey(name: 'store_credits', nullable: false)
  double storeCredits;
  @JsonKey(name: 'completed_orders', nullable: false)
  int completedOrders;
  String password;
  @JsonKey(name: 'password_confirmation', nullable: false)
  String passwordConfirmation;

  AccountModel({
    String id,
    this.login,
    this.email,
    this.username,
    this.phoneNumber,
    this.storeCredits,
    this.completedOrders,
    this.password,
    this.passwordConfirmation,
  }) : super(id: id);

  factory AccountModel.fromJson(Map<String, dynamic> json) => _$AccountModelFromJson(json);

  Map<String, dynamic> toJson() => _$AccountModelToJson(this);

  List<String> paramNames() {
    return ["email", "phone_number", "username", "password", "password_confirmation"];
  }
}
