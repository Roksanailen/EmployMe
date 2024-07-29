import 'package:emplooo/core/unified_api/methods/get_api.dart';
import 'package:emplooo/features/mainscreen/Section/data/model/company_response_model.dart';

import '../../../../../core/unified_api/api_variables.dart';
import '../model/section_type_response_model.dart';

class CompanyDataSource {
  Future<CompanyResponseModel> getAllCompanies() async {
    GetApi getApi = GetApi(
        uri: Uri.parse('http://localhost:8000/api/admin/companies'),
        fromJson: companyResponseModelFromJson);
    return await getApi.call();
  }

  Future<SectionTypeRespnoseModel> getSectionType(String companyId) async {
    final result = GetApi(
        uri: ApiVariables.getSectionType({'company_id': companyId}),
        fromJson: sectionTypeRespnoseModelFromJson);

    var newVariable = await result.call();
    return newVariable;
  }
}
