import 'package:dartz/dartz.dart';
import 'package:emplooo/core/error/failures.dart';
import 'package:emplooo/core/resources/type_defs.dart';
import 'package:emplooo/core/unified_api/handling_exception_manager.dart';
import 'package:emplooo/features/cv/data/datasource/cv_datasource.dart';

class CvRepo with HandlingExceptionManager {
  //! TODO: Edit Model From response
  Future<Either<Failure, String>> sendCv(BodyMap body) async {
    return wrapHandling(tryCall: () async {
      var result = await CvDatasource().sendCv(body);
      return Right(result);
    });
  }
}
