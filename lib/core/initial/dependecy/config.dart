import 'package:appnation_case/core/data/remote/dio_service.dart';
import 'package:get_it/get_it.dart';

import '../../helper/screen_size.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton<ScreenSize>(() => ScreenSize());
  getIt.registerLazySingleton<DioService>(() => DioService());
}