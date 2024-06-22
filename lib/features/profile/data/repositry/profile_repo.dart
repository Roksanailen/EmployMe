import 'package:dartz/dartz.dart';
import 'package:emplooo/core/resources/type_defs.dart';
import 'package:emplooo/features/profile/bloc/profile_bloc.dart';

import 'package:emplooo/features/profile/data/model/profile_model.dart';
import 'package:emplooo/features/profile/data/request/profile_request.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/unified_api/handling_exception_manager.dart';

class ProfileRepo with HandlingExceptionManager {
  ProfileDataSource dataSource;
  ProfileRepo({
    required this.dataSource,
  });
  Future<Either<Failure, Profile>> indexUser(Map<String, dynamic> body) async {
    return wrapHandling(tryCall: () async {
      final result = await ProfileDataSource().indexUser(body);
      return Right(result);
    });
  }

  Future<Either<Failure, Profile>> updateUser(
      Map<String, dynamic> body, int id) async {
    return wrapHandling(tryCall: () async {
      final result1 = await ProfileDataSource().updateUser(body, id);
      return Right(result1);
    });
  }
}
