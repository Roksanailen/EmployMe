import 'package:emplooo/core/unified_api/api_variables.dart';

import '../../../../../core/unified_api/methods/get_api.dart';
import '../model/job_details_respons_model.dart';

class JobDetailsDataSource {
  Future<JobDetailsRespnoseModel> getJobId(String Job_Id) async {
    final result = GetApi(
        uri: ApiVariables.getjobId( Job_Id),
        fromJson: jobDetailsRespnoseModelFromJson);

    var newVariable = await result.call();
    return newVariable;
  }
}