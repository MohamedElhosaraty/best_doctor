import 'package:best_doctor/core/helper/extensions.dart';
import 'package:best_doctor/core/routing/routes.dart';
import 'package:best_doctor/core/theming/colors.dart';
import 'package:best_doctor/core/theming/style.dart';
import 'package:flutter/material.dart';

class GetStartsButton extends StatelessWidget {
  const GetStartsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: (){
          context.pushNamed(Routes.loginScreen);
        },
        style: ButtonStyle(
          backgroundColor:WidgetStateProperty.all(ColorsManger.mainBlue),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: WidgetStateProperty.all(
            const Size(double.infinity,52),
          ),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            ),
          ),
        ),
        child: Text("Get Started",style: TextStyles.font16WhiteMedium,)
    );
  }
}
