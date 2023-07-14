

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';

import '../../constants/application_constants.dart';


class DioService {
 
 DioService() {
    _dio = Dio(BaseOptions(baseUrl: ApplicationConstants.baseUrlSpcex, contentType: Headers.jsonContentType));
  }
  late final Dio _dio;

  Future<Either<String, dynamic>> get({required Function(Map<String, dynamic> json) fromJson, required String path}) async {
    try {
      var response = await _dio.get(path);
      if (response.statusCode == 200) {
        return Right(fromJson(response.data));
      } else if (response.statusCode == 400) {
     return Left(response.statusCode.toString());
      }
    } catch (e) {
      return Left( e.toString());
    }
    return const Left("an unknown error");
  }
}