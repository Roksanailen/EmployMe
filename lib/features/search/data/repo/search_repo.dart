import 'package:dartz/dartz.dart';
import 'package:emplooo/core/error/failures.dart';
import 'package:emplooo/core/unified_api/handling_exception_manager.dart';
import 'package:emplooo/features/search/data/datasource/search_datasource.dart';
import 'package:emplooo/features/search/data/models/get_jobs_ai_model.dart';

class SearchRepo with HandlingExceptionManager {
  Future<Either<Failure, GetJobsAiResponseModel>> getJobs(
      String keyword) async {
    return wrapHandling(tryCall: () async {
      final result = await SearchDataSource().getJobsWithAi(keyword);
      return Right(result);
    });
  }
}
