import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_boilerplate/clean/core/network/result.dart';
import 'package:riverpod_boilerplate/clean/data/datasources/remote/user_api_service.dart';
import 'package:riverpod_boilerplate/clean/domain/entities/user.dart';

import '../../core/network/chopper_client.dart';
import '../../data/repositories/user_repository_impl.dart';
import '../../domain/repositories/user_repository.dart';
import '../../domain/usecases/get_users.dart';

part 'user_providers.g.dart';

// 1. Provider for the API Service
@riverpod
UserApiService userApiService(Ref ref) {
  return ref.watch(chopperClientProvider).getService<UserApiService>();
}

// 2. Provider for the Repository Implementation
@riverpod
UserRepository userRepository(Ref ref) {
  final apiService = ref.watch(userApiServiceProvider);
  return UserRepositoryImpl(apiService);
}

// 3. Provider for the Use Case
@riverpod
GetUsers getUsersUsecase(Ref ref) {
  final repository = ref.watch(userRepositoryProvider);
  return GetUsers(repository);
}

// 4. The final provider that the UI will interact with.
// It uses the use case to fetch the data.
// `autoDispose` is used to clean up the state when the widget is unmounted.
@riverpod
Future<Result<List<User>>> users(Ref ref) {
  return ref.watch(getUsersUsecaseProvider).call();
}
