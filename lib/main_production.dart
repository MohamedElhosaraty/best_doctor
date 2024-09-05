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

// to build_runner
// dart run build_runner build --delete-conflicting-outputs


// to run release
// flutter run --release -t lib/main_production.dart --flavor production

// to create apk
//flutter build apk --flavor production -t lib/main_production.dart
