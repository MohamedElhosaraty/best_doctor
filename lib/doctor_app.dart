import 'package:best_doctor/core/routing/app_router.dart';
import 'package:best_doctor/core/routing/routes.dart';
import 'package:best_doctor/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorApp extends StatelessWidget {
  final AppRouter appRouter;

  const DoctorApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.onBoardingScreen,
          title: 'DoctorApp',
          theme: ThemeData(
            primaryColor: ColorsManger.mainBlue,
            scaffoldBackgroundColor: Colors.white
          ),
          onGenerateRoute: appRouter.generateRouter,
        ),
    );
  }
}
