import 'package:best_doctor/core/theming/colors.dart';
import 'package:best_doctor/core/theming/style.dart';
import 'package:best_doctor/feature/home/data/models/specializations_response_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class DoctorListViewItem extends StatelessWidget {
  final Doctors? doctorsModel;
  const DoctorListViewItem({super.key, required this.doctorsModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          CachedNetworkImage(
            imageUrl:
            doctorsModel?.photo ??
                "https://th.bing.com/th/id/R.cb8fc32813c2b956cbfa8a6b8045b6bb?rik=HxoB%2fTwiqu9%2bug&pid=ImgRaw&r=0",            progressIndicatorBuilder: (context, url, downloadProgress) {
              return Shimmer.fromColors(
                baseColor: ColorsManger.lightGray,
                highlightColor: Colors.white,
                child: Container(
                  width: 110.w,
                  height: 120.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white,
                  ),
                ),
              );
            },
            imageBuilder: (context, imageProvider) => Container(
              width: 110.w,
              height: 120.h,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // ClipRRect(
          //   borderRadius: BorderRadius.circular(12),
          //   child: Image.network(
          //     doctorsModel?.photo ??
          //     "https://th.bing.com/th/id/R.cb8fc32813c2b956cbfa8a6b8045b6bb?rik=HxoB%2fTwiqu9%2bug&pid=ImgRaw&r=0",
          //     width: 110.w,
          //     height: 120.h,
          //     fit: BoxFit.cover,
          //   ),
          // ),
          16.horizontalSpace,
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    doctorsModel?.name ?? "Name",style: TextStyles.font18DarkBlueBold,
                    overflow: TextOverflow.ellipsis,
                  ),
                  5.verticalSpace,
                  Text(
                    '${doctorsModel?.degree} | ${doctorsModel?.phone}' ,style: TextStyles.font12GrayMedium,
                  ),
                  5.verticalSpace,
                  Text(
                    doctorsModel?.email ?? "Email",style: TextStyles.font12GrayMedium,
                  ),

                ],
              )
          ),
        ],
      ),
    );
  }
}
