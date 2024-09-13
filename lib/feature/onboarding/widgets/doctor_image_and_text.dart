import 'package:best_doctor/core/theming/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
            "assets/svgs/doctor_logo_opacity.svg"),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.white.withOpacity(0.0)
            ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, .4]
            ),
          ),
         child:  Image.asset(
             "assets/images/onboarding_doctor.png")
        ),
        Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Text(
              " Best Doctor Appointment App ",
              textAlign: TextAlign.center,
              // copyWith : to add spacial case to textStyle
              style: TextStyles.font32BlueBold.copyWith(
                height: 1.4
              ),
              )),
      ],
    );
  }
}
