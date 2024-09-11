import 'package:best_doctor/feature/home/ui/widgets/doctor_blue_container.dart';
import 'package:best_doctor/feature/home/ui/widgets/doctor_speciality_see_all.dart';
import 'package:best_doctor/feature/home/ui/widgets/doctors_list/doctros_bloc_builder.dart';
import 'package:best_doctor/feature/home/ui/widgets/home_top_bar.dart';
import 'package:best_doctor/feature/home/ui/widgets/specializations_list/specialization_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorBlueContainer(),
              24.verticalSpace,
              const DoctorSpecialitySeeAll(),
              18.verticalSpace,
              const SpecializationBlocBuilder(),
              8.verticalSpace,
              const DoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
