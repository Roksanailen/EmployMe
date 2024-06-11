import 'package:dartz/dartz.dart';
import 'package:emplooo/features/profile/data/model/profile_model.dart';
import 'package:emplooo/features/profile/data/request/profile_request.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/unified_api/handling_exception_manager.dart';

class ProfileRepo with HandlingExceptionManager {
  Future<Either<Failure, ProfileModel>> getUsers() async {
    return wrapHandling(tryCall: () async {
      final result = await ProfileDataSource().getUsers();
      return Right(result);
    });
  }
}