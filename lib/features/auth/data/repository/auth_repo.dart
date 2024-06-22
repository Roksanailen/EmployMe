import 'package:dartz/dartz.dart';
import 'package:emplooo/core/error/failures.dart';
import 'package:emplooo/core/unified_api/handling_exception_manager.dart';
import 'package:emplooo/features/auth/data/model/auth_model.dart';
import 'package:emplooo/features/auth/data/requests/auth_request.dart';

class AuthRepo with HandlingExceptionManager {
  AuthDataSource dataSource;
  AuthRepo({
    required this.dataSource,
  });

  Future<Either<Failure, AuthModel>> register(Map<String, dynamic> body) async {
    return wrapHandling(tryCall: () async {
      return Right(await dataSource.register(body));
    });
  }

  Future<Either<Failure, AuthModel>> login(Map<String, dynamic> body) async {
    return wrapHandling(tryCall: () async {
      return Right(await dataSource.login(body));
    });
  }
}

