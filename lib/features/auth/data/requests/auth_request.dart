import 'package:emplooo/core/unified_api/api_variables.dart';
import 'package:emplooo/core/unified_api/methods/post_api.dart';

import '../model/auth_model.dart';

class AuthDataSource {
  Future<AuthModel> register(Map<String, dynamic> body) async {
    PostApi postApi = PostApi(
        uri: ApiVariables.register(), body: body, fromJson: authModelFromJson);
    return await postApi.call();
  }

  Future<AuthModel> login(Map<String, dynamic> body) async {
    PostApi postApi = PostApi(
        uri: ApiVariables.login(), body: body, fromJson: authModelFromJson);
    return await postApi.call();
  }

  Future<void> logout() async {
    PostApi postApi = PostApi(
        uri: ApiVariables.logout(), body: {}, fromJson: authModelFromJson);
    return await postApi.call();
  }
}
