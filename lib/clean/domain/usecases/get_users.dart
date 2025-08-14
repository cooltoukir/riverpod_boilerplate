import 'package:riverpod_boilerplate/clean/core/network/result.dart';

import '../entities/user.dart';
import '../repositories/user_repository.dart';

class GetUsers {
  final UserRepository userRepository;

  const GetUsers(this.userRepository);

  Future<Result<List<User>>> call() => userRepository.getUsers();
}
