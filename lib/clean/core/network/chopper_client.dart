import 'package:chopper/chopper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/datasources/remote/user_api_service.dart';

part 'chopper_client.g.dart';

@riverpod
ChopperClient chopperClient(Ref ref) {
  return ChopperClient(
    baseUrl: Uri.parse('https://jsonplaceholder.typicode.com/'),
    services: [
      // Add your Chopper services here
      UserApiService.create(),
    ],
    converter: const JsonConverter(),
    errorConverter: const JsonConverter(),
    interceptors: [
      HttpLoggingInterceptor()
    ],
  );
}
