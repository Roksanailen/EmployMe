import 'package:emplooo/core/resources/type_defs.dart';
import 'package:emplooo/core/unified_api/methods/post_api.dart';

class CvDatasource {
  Future<void> sendCv(BodyMap body) async {
    PostApi postApi =
        //! TODO: Edit the Uri and The from Json
        PostApi(uri: Uri.parse(''), body: body, fromJson: (str) {});
    return await postApi.call();
  }
}
