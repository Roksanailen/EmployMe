import 'dart:convert';

import 'package:emplooo/core/resources/type_defs.dart';
import 'package:emplooo/core/unified_api/methods/post_api.dart';

class CvDatasource {
  Future<String> sendCv(BodyMap body) async {
    PostApi postApi = PostApi(
        uri: Uri.parse('http://localhost:8000/api/admin/train'),
        body: body,
        fromJson: (str) {
          return jsonDecode(str)['Result'][0];
        });
    return await postApi.call();
  }
}
