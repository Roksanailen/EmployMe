import 'package:dartz/dartz.dart';
import 'package:emplooo/core/error/failures.dart';
import 'package:emplooo/core/unified_api/handling_exception_manager.dart';
import 'package:emplooo/features/mainscreen/Section/data/dataSources/section_type_source.dart';
import 'package:emplooo/features/mainscreen/Section/data/model/section_type_response_model.dart';

class SectionTypeRepo with HandlingExceptionManager{
  Future<Either<Failure,SectionTypeResponseModel>> getSectionType(String section_id) async{
    return await wrapHandling(tryCall: () async{
    final result =await SectionTypeDataSource().GetSectionType(section_id);
    return Right(result);
    });
  }
}