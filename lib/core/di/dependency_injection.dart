import 'package:best_doctor/core/networking/api_service.dart';
import 'package:best_doctor/core/networking/dio_factory.dart';
import 'package:best_doctor/feature/home/data/apis/home_api_service.dart';
import 'package:best_doctor/feature/home/data/repos/home_repos.dart';
import 'package:best_doctor/feature/login/data/repos/login_repo.dart';
import 'package:best_doctor/feature/login/logic/cubit/login_cubit.dart';
import 'package:best_doctor/feature/sign_up/data/repos/sign_up_repo.dart';
import 'package:best_doctor/feature/sign_up/logic/sign_up_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';


final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  //signup
  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));
  //
  // home
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
}