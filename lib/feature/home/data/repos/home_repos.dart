import 'package:best_doctor/core/networking/api_error_handler.dart';
import 'package:best_doctor/core/networking/api_result.dart';
import 'package:best_doctor/feature/home/data/apis/home_api_service.dart';
import 'package:best_doctor/feature/home/data/models/specializations_response_model.dart';

class HomeRepo {
  final HomeApiService _homeApiService;

  HomeRepo(this._homeApiService) ;

  Future<ApiResult<SpecializationsResponseModel>> getSpecialization () async {
    try{
      final response = await _homeApiService.getSpecialization();
      return ApiResult.success(response);
    }catch(error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

}