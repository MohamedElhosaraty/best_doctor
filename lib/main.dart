import 'package:best_doctor/core/di/dependency_injection.dart';
import 'package:best_doctor/core/routing/app_router.dart';
import 'package:best_doctor/doctor_app.dart';
import 'package:flutter/material.dart';

void main() {
  setupGetIt();
  runApp( DoctorApp(
    appRouter: AppRouter(),
  ));
}

// dart run build_runner build --delete-conflicting-outputs
