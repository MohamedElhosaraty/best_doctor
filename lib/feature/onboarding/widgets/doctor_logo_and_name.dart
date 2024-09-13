import 'package:best_doctor/core/theming/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorLogoAndName extends StatelessWidget {
  const DoctorLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
            "assets/svgs/doctor_logo.svg"),
        SizedBox(
          width: 5.w,
        ),
        Text(
          "Docdoc",style: TextStyles.font24BlockBold,
        )
      ],
    );
  }
}
