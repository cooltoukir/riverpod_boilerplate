import 'package:equatable/equatable.dart';

class Geo extends Equatable {
  final String lat;
  final String lng;

  const Geo({required this.lat, required this.lng});

  @override
  List<Object?> get props => [lat, lng];

  @override
  String toString() {
    return 'Geo(lat: $lat, lng: $lng)';
  }
}
