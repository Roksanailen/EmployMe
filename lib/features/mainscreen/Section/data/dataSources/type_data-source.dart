import 'package:emplooo/core/unified_api/methods/get_api.dart';
import 'package:emplooo/features/mainscreen/Section/data/model/type_response_model.dart';

class TypsDataSource{
 Future<TypeResponseModel> getAllTyps() async{
  GetApi getApi = GetApi(
        uri: Uri.parse('http://localhost:8000/api/admin/jobs'),
        fromJson: typeResponseModelFromJson);
    return await getApi.call();

  }
}