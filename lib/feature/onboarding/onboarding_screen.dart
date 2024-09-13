import 'package:best_doctor/core/theming/style.dart';
import 'package:best_doctor/feature/onboarding/widgets/doctor_image_and_text.dart';
import 'package:best_doctor/feature/onboarding/widgets/doctor_logo_and_name.dart';
import 'package:best_doctor/feature/onboarding/widgets/get_starts_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
              top: 30.h,
              bottom: 30.h
            ),
            child:  Column(
              children: [
                const DoctorLogoAndName(),
                30.verticalSpace,
                const DoctorImageAndText(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    children: [
                      Text(
                          "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                      textAlign: TextAlign.center,
                        style: TextStyles.font13GrayNormal,
                      ),
                      30.verticalSpace,
                      const GetStartsButton()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
