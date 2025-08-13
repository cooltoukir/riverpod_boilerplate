import 'package:riverpod_boilerplate/clean/domain/entities/user.dart';
import 'package:json_annotation/json_annotation.dart';
import 'address_model.dart';
import 'company_model.dart';

part 'user_model.g.dart';

@JsonSerializable(explicitToJson: true) // Important for nested objects
class UserModel extends User {
  // Use Model types for nested objects
  final AddressModel addressModel;
  final CompanyModel companyModel;

  const UserModel({
    required super.id,
    required super.name,
    required super.username,
    required super.email,
    required this.addressModel,
    required super.phone,
    required super.website,
    required this.companyModel,
  }) : super(address: addressModel, company: companyModel); // Pass models up

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
