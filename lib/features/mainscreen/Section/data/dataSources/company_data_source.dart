import 'package:emplooo/core/unified_api/methods/get_api.dart';
import 'package:emplooo/features/mainscreen/Section/data/model/company_response_model.dart';

class CompanyDataSource {
  Future<CompanyResponseModel> getAllCompanies() async {
    GetApi getApi = GetApi(
        uri: Uri.parse('http://localhost:8000/api/admin/companies'),
        fromJson: companyResponseModelFromJson);
    return await getApi.call();
  }
}
