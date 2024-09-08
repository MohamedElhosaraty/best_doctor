import 'package:best_doctor/core/theming/colors.dart';
import 'package:best_doctor/core/theming/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 8,
          itemBuilder: (context , index){
            return Padding(
              padding: EdgeInsetsDirectional.only(
                start: index == 0 ? 0 : 24.w
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: ColorsManger.lightBlue,
                    child: Image.asset("assets/images/home_doctor_speciality.png",
                       width: 40.w,
                       height: 40.h,
                    ),
                  ),
                  8.verticalSpace,
                  Text(
                    "Specialization",style: TextStyles.font12DarkBlueRegular,
                  )
                ],
              ),
            );
          }
      ),
    );
  }
}
