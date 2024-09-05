import 'package:best_doctor/core/di/dependency_injection.dart';
import 'package:best_doctor/core/routing/app_router.dart';
import 'package:best_doctor/doctor_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  setupGetIt();
  // To fix texts being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();
  runApp( DoctorApp(
    appRouter: AppRouter(),
  ));
}

// dart run build_runner build --delete-conflicting-outputs

//1//039wBQC4Sr8-JCgYIARAAGAMSNwF-L9IrvbmfEGOFjVBKEekGCiH1FQr2fit21_XDYXmXWR1t1iKZCt7BYLWKlB52BYXmrse8QiQ