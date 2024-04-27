import 'package:emplooo/features/mainscreen/Section/data/model/section_response_model.dart';

import '../../../../../core/unified_api/methods/get_api.dart';

class SectionDataSource {
  Future<SectionResponseModel> getAllSections() async {
    GetApi getApi = GetApi(
        uri: Uri.parse('http://localhost:8000/api/admin/sectionCompanies'),
        fromJson: sectionResponseModelFromJson);
    return await getApi.call();
  }
}
