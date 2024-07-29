import 'package:dartz/dartz.dart';
import 'package:emplooo/core/error/failures.dart';
import 'package:emplooo/core/unified_api/handling_exception_manager.dart';
import 'package:emplooo/features/mainscreen/Section/data/dataSources/company_data_source.dart';
import 'package:emplooo/features/mainscreen/Section/data/model/company_response_model.dart';
import 'package:emplooo/features/mainscreen/Section/data/model/section_type_response_model.dart';

class CompanyRepo with HandlingExceptionManager {
  Future<Either<Failure, CompanyResponseModel>> getAllCompanies() async {
    return wrapHandling(tryCall: () async {
      final result = await CompanyDataSource().getAllCompanies();
      return Right(result);
    });
  }

  Future<Either<Failure, SectionTypeRespnoseModel>> indexJobs(
      int companyId) async {
    return wrapHandling(tryCall: () async {
      return Right(
          await CompanyDataSource().getSectionType(companyId.toString()));
    });
  }
}
