import 'package:best_doctor/feature/home/logic/home_cubit.dart';
import 'package:best_doctor/feature/home/logic/home_state.dart';
import 'package:best_doctor/feature/home/ui/widgets/doctors_list/doctors_shimmer_loading.dart';
import 'package:best_doctor/feature/home/ui/widgets/specializations_list/speciality_list_view.dart';
import 'package:best_doctor/feature/home/ui/widgets/specializations_list/speciality_shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecializationBlocBuilder extends StatelessWidget {
  const SpecializationBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit,HomeState>(
        buildWhen: (previous, current)=>
        current is SpecializationLoading ||
            current is SpecializationSuccess ||
            current is SpecializationError,
        builder: (context ,state){
          return state.maybeWhen(
              specializationLoading: (){
                return setUpLoading();
              },
              specializationSuccess: (specializationsResponseModel){
                //var specializationList = specializationsResponseModel
                return setUpSuccess(specializationsResponseModel);
              },
              specializationError: (errorHandler) => setUpError(),
              orElse: () =>setUpError() ,
          );
        })
     ;
  }

  Widget setUpLoading (){
    return Expanded(
      child: Column(
        children: [
          const SpecialityShimmerLoading(),
          8.verticalSpace,
          const DoctorsShimmerLoading(),
        ],
      ),
    );
  }

  Widget setUpSuccess (specializationsResponseModel) {
    return SpecialityListView(specializationDataList: specializationsResponseModel ?? [],);
  }

  Widget setUpError () {
    return const SizedBox.shrink();
  }
}
