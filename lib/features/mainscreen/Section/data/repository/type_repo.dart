import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:emplooo/features/mainscreen/Section/data/dataSources/type_data-source.dart';
import 'package:emplooo/features/mainscreen/Section/data/model/type_response_model.dart';

import '../../../../../core/error/failures.dart';
import '../../../../../core/unified_api/handling_exception_manager.dart';


class TypeRepo with HandlingExceptionManager{
  Future<Either<Failure, TypeResponseModel>> getAllTyps() async {
    return wrapHandling(tryCall: () async {
      final result1 = await TypsDataSource().getAllTyps();
      return Right(result1);
    });
  }
}