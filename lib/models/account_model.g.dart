// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountModel _$AccountModelFromJson(Map<String, dynamic> json) {
  return AccountModel(
    id: json['id'] as String,
    login: json['login'] as String,
    email: json['email'] as String,
    username: json['username'] as String,
    phoneNumber: json['phone_number'] as String,
    storeCredits: (json['store_credits'] as num).toDouble(),
    completedOrders: json['completed_orders'] as int,
    password: json['password'] as String,
    passwordConfirmation: json['password_confirmation'] as String,
  )
    ..relationships = json['relationships'] as Map<String, dynamic>
    ..included = json['included'] as List;
}

Map<String, dynamic> _$AccountModelToJson(AccountModel instance) => <String, dynamic>{
      'relationships': instance.relationships,
      'included': instance.included,
      'id': instance.id,
      'login': instance.login,
      'email': instance.email,
      'username': instance.username,
      'phone_number': instance.phoneNumber,
      'store_credits': instance.storeCredits,
      'completed_orders': instance.completedOrders,
      'password': instance.password,
      'password_confirmation': instance.passwordConfirmation,
    };
