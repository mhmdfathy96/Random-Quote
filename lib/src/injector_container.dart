import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/api/dio_consumer.dart';
import 'core/api/dio_interceptors.dart';
import 'core/network/network_info.dart';
import 'features/random_quote/quote_injection.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  //!features
  initQuoteInjection();
  //!Core
  getIt.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(internetConnectionChecker: getIt()));
  getIt.registerLazySingleton<DioConsumer>(() => DioConsumer(client: getIt()));
  //!External

  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  getIt.registerLazySingleton(() => sharedPreferences);
  getIt.registerLazySingleton(() => Dio());
  getIt.registerLazySingleton(() => AppIntercepters());
  getIt.registerLazySingleton(() => LogInterceptor(
      request: true,
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true,
      error: true));
  getIt.registerLazySingleton(() => InternetConnectionChecker());
}
