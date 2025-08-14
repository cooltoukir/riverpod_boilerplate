import 'dart:io';

import 'package:riverpod_boilerplate/clean/core/network/result.dart';
import 'package:riverpod_boilerplate/clean/data/datasources/remote/user_api_service.dart';
import 'package:riverpod_boilerplate/clean/domain/entities/user.dart';

import '../../domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserApiService api;

  UserRepositoryImpl(this.api);

  @override
  Future<Result<List<User>>> getUsers() async {
    try {
      final response = await api.getUsers();
      if (response.isSuccessful) {
        final users = response.body ?? [];
        // On success, wrap the data in an Ok object
        return Result.ok(users);
      } else {
        // For HTTP errors, create a specific Exception
        final error = Exception(
          'API Error - Status Code: ${response.statusCode}, Body: ${response.error}',
        );
        return Result.error(error);
      }
    } on SocketException catch (e) {
      // For network errors, return the caught exception
      return Result.error(Exception('No Internet Connection: ${e.message}'));
    } catch (e) {
      // For any other unexpected errors
      return Result.error(Exception('An unexpected error occurred: $e'));
    }
  }
}
