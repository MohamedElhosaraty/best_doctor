import 'package:best_doctor/core/theming/colors.dart';
import 'package:best_doctor/core/theming/style.dart';
import 'package:best_doctor/feature/home/data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecializationListViewItem extends StatelessWidget {
  final SpecializationsData? specializationsData;
  final int itemIndex;
  final int selectedIndex;
  const SpecializationListViewItem({super.key, required this.specializationsData, required this.itemIndex, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
          start: itemIndex == 0 ? 0 : 24.w
      ),
      child: Column(
        children: [

          itemIndex == selectedIndex ?
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorsManger.dartBlue,
                  ),
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  radius: 28,
                  backgroundColor: ColorsManger.lightBlue,
                  child: Image.asset("assets/images/home_doctor_speciality.png",
                    width: 42.w,
                    height: 42.h,
                  ),
                ),

              )
              :
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
            specializationsData?.name ?? "Specialization",
            style: itemIndex == selectedIndex ?
            TextStyles.font14DarkBlueBold
                : TextStyles.font12DarkBlueRegular,
          )
        ],
      ),
    );
  }
}
