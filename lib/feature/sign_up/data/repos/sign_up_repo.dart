import 'package:best_doctor/core/networking/api_error_handler.dart';
import 'package:best_doctor/core/networking/api_result.dart';
import 'package:best_doctor/core/networking/api_service.dart';
import 'package:best_doctor/feature/sign_up/data/models/sign_up_request_body.dart';
import 'package:best_doctor/feature/sign_up/data/models/sign_up_response.dart';

class SignUpRepo {
  final ApiService _apiService;

  SignUpRepo(this._apiService);

  Future<ApiResult<SignUpResponse>> signUp(
      SignUpRequestBody signUpRequestBody) async {
    try {
      final response = await _apiService.signup(signUpRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(
        ApiErrorHandler.handle(error),
      );
    }
  }
}
