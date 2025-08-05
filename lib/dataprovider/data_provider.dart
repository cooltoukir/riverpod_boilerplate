import 'package:riverpod/riverpod.dart';
import 'package:riverpod_boilerplate/models/user_model.dart';

import '../services/services.dart';

final userDataProvider = FutureProvider<List<UserModel>>((ref) async {
  return ref.watch(userProvider).getUsers();
});
