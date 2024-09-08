import 'package:best_doctor/core/theming/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorBlueContainer extends StatelessWidget {
  const DoctorBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 197.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: 167.h,
            padding: EdgeInsets.symmetric(
              vertical: 16.h,
              horizontal: 16.w
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              image: const DecorationImage(
                  image: AssetImage("assets/images/home_blue_pattern.png"),),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "Book and \nschedule with \nnearest doctor",
                  style: TextStyles.font18WhiteMedium.copyWith(height: 1.5.h),
                ),
                16.verticalSpace,
                Expanded(
                  child: ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(48),
                        ),
                      ),
                      child: Text(
                          "Find Nearby",style: TextStyles.font12BlueRegular,
                      ),),
                ),
              ],
            ),
          ),
          Positioned(
              right: 8.w,
              top: 0,
              child: Image.asset(
                "assets/images/home_nurse.png",
                fit: BoxFit.cover,height: 200.h,),)
        ],
      ),
    );
  }
}
