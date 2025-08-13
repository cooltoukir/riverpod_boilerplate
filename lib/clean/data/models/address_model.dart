import 'package:riverpod_boilerplate/clean/domain/entities/address.dart';
import 'package:json_annotation/json_annotation.dart';
import 'geo_model.dart';

part 'address_model.g.dart';

@JsonSerializable(explicitToJson: true) // Important for nested objects
class AddressModel extends Address {
  // The type here must be the Model, not the Entity
  final GeoModel geoModel;

  const AddressModel({
    required super.street,
    required super.suite,
    required super.city,
    required super.zipcode,
    required this.geoModel,
  }) : super(geo: geoModel); // Pass the model to the entity's constructor

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);

  Map<String, dynamic> toJson() => _$AddressModelToJson(this);
}
