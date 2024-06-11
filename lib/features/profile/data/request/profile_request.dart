import 'package:emplooo/core/unified_api/api_variables.dart';
import 'package:emplooo/core/unified_api/methods/get_api.dart';
import 'package:emplooo/features/profile/data/model/profile_model.dart';

class ProfileDataSource {
  Future<ProfileModel> getUsers() async {
    GetApi getApi = GetApi(
        uri: Uri.parse('localhost:8000/api/user/users'),
        fromJson: profileFromJson);
    return await getApi.call();
  }
}
