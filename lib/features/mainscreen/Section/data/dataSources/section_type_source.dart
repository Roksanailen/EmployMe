import 'package:emplooo/core/unified_api/api_variables.dart';
import 'package:emplooo/core/unified_api/methods/get_api.dart';
import 'package:emplooo/features/mainscreen/Section/data/model/section_type_response_model.dart';

class SectionTypeDataSource{
  
  Future<SectionTypeResponseModel> GetSectionType(String section_id) async{
    final result =GetApi(uri: ApiVariables.getSectionType(section_id),
     fromJson: sectionTypeResponseModelFromJson);
    return await result.callRequest();
  }
}