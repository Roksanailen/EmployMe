import 'package:emplooo/core/unified_api/api_variables.dart';
import 'package:emplooo/core/unified_api/methods/get_api.dart';
import 'package:emplooo/features/mainscreen/Section/data/model/section_type_response_model.dart';

class SectionTypeDataSource {
  Future<SectionTypeRespnoseModel> getSectionType(String sectionId) async {
    final result = GetApi(
        uri: ApiVariables.getSectionType({"section_id": sectionId}),
        fromJson: sectionTypeRespnoseModelFromJson);

    var newVariable = await result.call();
    return newVariable;
  }
}
