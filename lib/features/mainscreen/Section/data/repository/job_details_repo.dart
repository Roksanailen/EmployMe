import 'package:dartz/dartz.dart';
import 'package:emplooo/features/mainscreen/Section/data/dataSources/job_details_data_source.dart';

import '../../../../../core/error/failures.dart';
import '../../../../../core/unified_api/handling_exception_manager.dart';
import '../model/job_details_respons_model.dart';


class JobDetailsRepo with HandlingExceptionManager {
  Future<Either<Failure, JobDetailsRespnoseModel>> getjobId(
      String Job_Id) async {
    return await wrapHandling(tryCall: () async {
      final result = await JobDetailsDataSource().getJobId(Job_Id);
      return Right(result);
    });
  }
}