// ignore_for_file: implementation_imports
import 'package:appnation_case/core/constants/application_constants.dart';
import 'package:appnation_case/core/data/remote/dio_service.dart';
import 'package:appnation_case/core/initial/dependecy/config.dart';
import 'package:appnation_case/future/spacex/models/spacex.dart';
import 'package:either_dart/src/either.dart';

class MissionRepository{

  Future<Either<String?, SpacexResponseModel>> getMission()async{

   var response=await getIt<DioService>().get(fromJson: SpacexResponseModel.fromJson, path: ApplicationConstants.pathSpacexLatest);
   if(response.isRight) {
     return Right(response.right);
   }
   else {
     Left(response);
   }
  return const Left(null);
  }
}