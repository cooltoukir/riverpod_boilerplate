// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  username: json['username'] as String,
  email: json['email'] as String,
  addressModel: AddressModel.fromJson(
    json['addressModel'] as Map<String, dynamic>,
  ),
  phone: json['phone'] as String,
  website: json['website'] as String,
  companyModel: CompanyModel.fromJson(
    json['companyModel'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'username': instance.username,
  'email': instance.email,
  'phone': instance.phone,
  'website': instance.website,
  'addressModel': instance.addressModel.toJson(),
  'companyModel': instance.companyModel.toJson(),
};
