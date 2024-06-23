import 'package:emplooo/core/unified_api/methods/get_api.dart';
import 'package:emplooo/features/search/data/models/get_jobs_ai_model.dart';

class SearchDataSource {
  Future<GetJobsAiResponseModel> getJobsWithAi(String keyword) async {
    final getApi = GetApi(
        uri: Uri.parse('http://localhost:8000/api/admin/getJobs?x=$keyword'),
        fromJson: getJobsAiResponseModelFromJson);
    return await getApi.call();
  }
}
