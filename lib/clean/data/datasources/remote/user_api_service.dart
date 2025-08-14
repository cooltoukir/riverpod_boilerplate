import 'package:chopper/chopper.dart';
import 'package:riverpod_boilerplate/clean/data/models/user_model.dart';

part 'user_api_service.chopper.dart';

@ChopperApi(baseUrl: 'users')
abstract class UserApiService extends ChopperService {
  @GET()
  Future<Response<List<UserModel>>> getUsers();

  @GET(path: '/{id}')
  Future<Response<UserModel>> getUser(@Path('id') int id);

  @POST()
  Future<Response<UserModel>> createUser(@Body() UserModel user);

  @PUT(path: '/{id}')
  Future<Response<UserModel>> updateUser(
    @Path('id') int id,
    @Body() UserModel user,
  );

  @DELETE(path: '/{id}')
  Future<Response<void>> deleteUser(@Path('id') int id);

  static UserApiService create([ChopperClient? client]) =>
      _$UserApiService(client);
}
