import 'package:best_doctor/core/helper/extensions.dart';
import 'package:best_doctor/feature/home/data/models/specializations_response_model.dart';
import 'package:best_doctor/feature/home/data/repos/home_repos.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';


class HomeCubit extends Cubit<HomeState> {

  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  List<SpecializationsData?>? specializationsList = [];

  void getSpecializations () async {
    emit(const HomeState.specializationLoading());
    final response = await _homeRepo.getSpecialization();
    response.when(
        success:(specializationsResponseModel){
      specializationsList = specializationsResponseModel.specializationDataList ?? [];
      getDoctorsList(specializationId: specializationsList?.first?.id);

      emit( HomeState.specializationSuccess(specializationsList));
    }, failure: (apiErrorModel){
       emit(HomeState.specializationError(apiErrorModel));
    });
  }



  void getDoctorsList({required int? specializationId}) {
    List<Doctors?>? doctorsList =
    getDoctorsListBySpecializationId(specializationId);

    if (!doctorsList.isNullOrEmpty()) {
      emit(HomeState.doctorsSuccess(doctorsList));
    } else {
      emit(const HomeState.doctorsError());
    }
  }

  /// returns the list of doctors based on the specialization id
  getDoctorsListBySpecializationId(specializationId) {
    return specializationsList
        ?.firstWhere((specialization) => specialization?.id == specializationId)
        ?.doctorsList;
  }
}


