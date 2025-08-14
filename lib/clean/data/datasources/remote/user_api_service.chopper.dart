// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$UserApiService extends UserApiService {
  _$UserApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = UserApiService;

  @override
  Future<Response<List<UserModel>>> getUsers() {
    final Uri $url = Uri.parse('users');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<List<UserModel>, UserModel>($request);
  }

  @override
  Future<Response<UserModel>> getUser(int id) {
    final Uri $url = Uri.parse('users/${id}');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<UserModel, UserModel>($request);
  }

  @override
  Future<Response<UserModel>> createUser(UserModel user) {
    final Uri $url = Uri.parse('users');
    final $body = user;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<UserModel, UserModel>($request);
  }

  @override
  Future<Response<UserModel>> updateUser(int id, UserModel user) {
    final Uri $url = Uri.parse('users/${id}');
    final $body = user;
    final Request $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<UserModel, UserModel>($request);
  }

  @override
  Future<Response<void>> deleteUser(int id) {
    final Uri $url = Uri.parse('users/${id}');
    final Request $request = Request('DELETE', $url, client.baseUrl);
    return client.send<void, void>($request);
  }
}
