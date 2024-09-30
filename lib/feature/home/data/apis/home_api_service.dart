import 'package:best_doctor/core/networking/api_constants.dart';
import 'package:best_doctor/feature/home/data/models/specializations_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(ApiConstants.specializationIndex)
  Future<SpecializationsResponseModel> getSpecialization();
}