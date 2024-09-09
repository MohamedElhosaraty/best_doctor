import 'package:best_doctor/core/di/dependency_injection.dart';
import 'package:best_doctor/core/routing/routes.dart';
import 'package:best_doctor/feature/home/logic/home_cubit.dart';
import 'package:best_doctor/feature/home/ui/home_screen.dart';
import 'package:best_doctor/feature/login/logic/cubit/login_cubit.dart';
import 'package:best_doctor/feature/login/ui/login_screen.dart';
import 'package:best_doctor/feature/onboarding/onboarding_screen.dart';
import 'package:best_doctor/feature/sign_up/logic/sign_up_cubit.dart';
import 'package:best_doctor/feature/sign_up/ui/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) =>
              BlocProvider(
                create: (context) => getIt<LoginCubit>(),
                child: const LoginScreen(),
              ),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) =>
              BlocProvider(
                create: (context) => getIt<SignUpCubit>(),
                child: const SignupScreen(),
              ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) =>
              BlocProvider(
                create: (context) => HomeCubit(getIt())..getSpecializations(),
                child: const HomeScreen(),
              ),
        );
      default:
        return null;
    }
  }
}