import 'package:chopper/chopper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'chopper_client.g.dart';

@riverpod
ChopperClient chopperClient(Ref ref) {
  return ChopperClient(
    baseUrl: Uri.parse('https://jsonplaceholder.typicode.com'),
    converter: const JsonConverter(),
    errorConverter: const JsonConverter(),
    interceptors: [HttpLoggingInterceptor()],
  );
}
