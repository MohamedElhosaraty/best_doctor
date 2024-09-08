import 'package:best_doctor/core/theming/colors.dart';
import 'package:best_doctor/core/theming/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, Omar!",style: TextStyles.font18DarkBlueBold,
            ),
            Text(
              "How Are you Today?",style: TextStyles.font12GrayRegular,
            ),

          ],
        ),
        const Spacer(),
         CircleAvatar(
          radius: 24,
          backgroundColor: ColorsManger.moreLighterGray,
          child: SvgPicture.asset("assets/svgs/notification.svg"),
        ),
      ],
    );
  }
}
