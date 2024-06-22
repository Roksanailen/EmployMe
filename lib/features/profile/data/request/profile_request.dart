import 'dart:html';

import 'package:emplooo/core/unified_api/api_variables.dart';
import 'package:emplooo/core/unified_api/methods/get_api.dart';
import 'package:emplooo/core/unified_api/methods/put_request.dart';
import 'package:emplooo/features/profile/data/model/profile_model.dart';

class ProfileDataSource {
  Future<Profile> updateUser(Map<String, dynamic> params, int id) async {
    final result = PutApi(
        uri: Uri.parse("localhost:8000/api/user/users/update?"),
        body: params,
        fromJson: profileFromJson);
    return await result.call();
  }

  Future<Profile> indexUser(Map<String, dynamic> params) async {
    final result = GetApi(
        uri: Uri.parse("localhost:8000/api/user/users"),
        fromJson: profileFromJson);

    return await result.call();
  }
}
