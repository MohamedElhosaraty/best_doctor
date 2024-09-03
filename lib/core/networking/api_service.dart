import 'package:best_doctor/core/networking/api_constants.dart';
import 'package:best_doctor/feature/login/data/models/login_request_body.dart';
import 'package:best_doctor/feature/login/data/models/login_response.dart';
import 'package:best_doctor/feature/sign_up/data/models/sign_up_request_body.dart';
import 'package:best_doctor/feature/sign_up/data/models/sign_up_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';


@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
      @Body() LoginRequestBody loginRequestBody,
      );

  @POST(ApiConstants.signup)
  Future<SignUpResponse> signup(
      @Body() SignUpRequestBody signUpRequestBody,
      );
}