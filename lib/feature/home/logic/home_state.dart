import 'package:best_doctor/core/networking/api_error_model.dart';
import 'package:best_doctor/feature/home/data/models/specializations_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part  'home_state.freezed.dart';


@freezed
class HomeState<T> with _$HomeState<T>
{
  const factory HomeState.initial() = _Initial;
  const factory HomeState.specializationLoading() = SpecializationLoading;
  const factory HomeState.specializationSuccess(List<SpecializationsData?>? specializationDataList) = SpecializationSuccess;
  const factory HomeState.specializationError(ApiErrorModel apiErrorModel) = SpecializationError;

  //Doctor
  const factory HomeState.doctorsSuccess(List<Doctors?>? specializationDataList) = DoctorsSuccess;
  const factory HomeState.doctorsError() = DoctorsError;
}