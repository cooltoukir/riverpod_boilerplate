import 'package:riverpod_boilerplate/clean/core/network/result.dart';

import '../entities/user.dart';

abstract class UserRepository {
  Future<Result<List<User>>> getUsers();

  // Future<User> getUser(int id);
  //
  // Future<User> createUser(User user);
  //
  // Future<User> updateUser(int id, User user);
  //
  // Future<void> deleteUser(int id);
}
