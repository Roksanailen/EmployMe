import 'package:emplooo/core/unified_api/methods/get_api.dart';
import 'package:emplooo/core/unified_api/methods/post_api.dart';
import 'package:emplooo/features/profile/data/model/profile_model.dart';

class ProfileDataSource {
  Future<ProfileResponseModel> updateUser(Map<String, dynamic> params) async {
    final result = PostApi(
        uri: Uri.parse("http://localhost:8000/api/user/users/update"),
        body: params,
        fromJson: profileResponseModelFromJson);
    return await result.call();
  }

  Future<ProfileResponseModel> indexUser(Map<String, dynamic> params) async {
    final result = GetApi(
        uri: Uri.parse("http://localhost:8000/api/user/users"),
        fromJson: profileResponseModelFromJson);

    return await result.call();
  }
}
