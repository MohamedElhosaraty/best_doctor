import 'package:best_doctor/core/theming/style.dart';
import 'package:best_doctor/core/widgets/app_text_button.dart';
import 'package:best_doctor/feature/login/data/models/login_request_body.dart';
import 'package:best_doctor/feature/login/logic/cubit/login_cubit.dart';
import 'package:best_doctor/feature/login/ui/widgets/dont_have_account_text.dart';
import 'package:best_doctor/feature/login/ui/widgets/email_and_password.dart';
import 'package:best_doctor/feature/login/ui/widgets/login_bloc_listener.dart';
import 'package:best_doctor/feature/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w,vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back",style: TextStyles.font24BlueBold,
                ),
                8.verticalSpace,
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: TextStyles.font14GrayNormal,
                ),
                36.verticalSpace,
                Column(
                  children: [
                    const EmailAndPassword(),
                    24.verticalSpace,
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        'Forgot Password?',style: TextStyles.font13BlueRegular,
                      ),
                    ),
                    40.verticalSpace,
                    AppTextButton(
                        buttonText: "Login",
                        textStyle: TextStyles.font16WhiteSemiBold,
                        onPressed: (){
                          validateThenDoLogin(context);
                        }
                    ),
                    16.verticalSpace,
                    const TermsAndConditionsText(),
                    60.verticalSpace,
                    const DontHaveAccountText(),
                    const LoginBlocListener(),
                  ],
                ),

              ],
            ),
          ),
        ) ,),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates(
        LoginRequestBody(
            email: context.read<LoginCubit>().emailController.text,
            password: context.read<LoginCubit>().passwordController.text,
        ),
      );
    }
  }
}
