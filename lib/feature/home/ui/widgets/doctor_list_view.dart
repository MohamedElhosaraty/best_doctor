import 'package:best_doctor/core/theming/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorListView extends StatelessWidget {
  const DoctorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
          itemCount: 10,
            itemBuilder: (context , index) {
              return Container(
                margin: EdgeInsets.only(bottom: 16.h),
               child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      "https://th.bing.com/th/id/R.cb8fc32813c2b956cbfa8a6b8045b6bb?rik=HxoB%2fTwiqu9%2bug&pid=ImgRaw&r=0",
                      width: 110.w,
                      height: 120.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  16.horizontalSpace,
                  Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name",style: TextStyles.font18DarkBlueBold,
                            overflow: TextOverflow.ellipsis,
                          ),
                          5.verticalSpace,
                          Text(
                            "Degree | 0111111",style: TextStyles.font12GrayMedium,
                          ),
                          5.verticalSpace,
                          Text(
                            "Email| @gmail.com",style: TextStyles.font12GrayMedium,
                          ),

                        ],
                      )
                  ),
                ],
              ),
              );
            })
    );
  }
}
