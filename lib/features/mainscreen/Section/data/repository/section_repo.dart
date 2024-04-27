import 'package:dartz/dartz.dart';
import 'package:emplooo/core/error/failures.dart';
import 'package:emplooo/core/unified_api/handling_exception_manager.dart';
import 'package:emplooo/features/mainscreen/Section/data/dataSources/section_data_source.dart';
import 'package:emplooo/features/mainscreen/Section/data/model/section_response_model.dart';

class SectionRepo with HandlingExceptionManager {
  Future<Either<Failure, SectionResponseModel>> getAllSections() async {
    return wrapHandling(tryCall: () async {
      final result = await SectionDataSource().getAllSections();
      return Right(result);
    });
  }
}
