// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userApiServiceHash() => r'ee9446c0182f7e5cf641a64d11467bd2d02ba74a';

/// See also [userApiService].
@ProviderFor(userApiService)
final userApiServiceProvider = AutoDisposeProvider<UserApiService>.internal(
  userApiService,
  name: r'userApiServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userApiServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef UserApiServiceRef = AutoDisposeProviderRef<UserApiService>;
String _$userRepositoryHash() => r'96cfdec73edaf5e3453f576aa01fda6cb7d64162';

/// See also [userRepository].
@ProviderFor(userRepository)
final userRepositoryProvider = AutoDisposeProvider<UserRepository>.internal(
  userRepository,
  name: r'userRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef UserRepositoryRef = AutoDisposeProviderRef<UserRepository>;
String _$getUsersUsecaseHash() => r'def39da368b2db04181358a3888f2043565c049d';

/// See also [getUsersUsecase].
@ProviderFor(getUsersUsecase)
final getUsersUsecaseProvider = AutoDisposeProvider<GetUsers>.internal(
  getUsersUsecase,
  name: r'getUsersUsecaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getUsersUsecaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetUsersUsecaseRef = AutoDisposeProviderRef<GetUsers>;
String _$usersHash() => r'050330c937d6475211b646a302c394a521a709e2';

/// See also [users].
@ProviderFor(users)
final usersProvider = AutoDisposeFutureProvider<Result<List<User>>>.internal(
  users,
  name: r'usersProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$usersHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef UsersRef = AutoDisposeFutureProviderRef<Result<List<User>>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
