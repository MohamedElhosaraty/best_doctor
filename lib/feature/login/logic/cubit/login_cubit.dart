import 'package:best_doctor/core/helper/constants.dart';
import 'package:best_doctor/core/helper/shared_pref_helper.dart';
import 'package:best_doctor/core/networking/dio_factory.dart';
import 'package:best_doctor/feature/login/data/models/login_request_body.dart';
import 'package:best_doctor/feature/login/data/repos/login_repo.dart';
import 'package:best_doctor/feature/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {

  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginStates(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loginLoading());
    final response = await _loginRepo.login(loginRequestBody);
    response.when(
        success: (loginResponse) async {
          await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, loginResponse.userData?.token ?? "");
          DioFactory.setTokenIntoHeaderAfterLogin(loginResponse.userData?.token ?? "");
          emit(LoginState.loginSuccess(loginResponse));
          },
        failure: (apiErrorModel)
        {
          emit(LoginState.loginError(apiErrorModel));
        });
  }
}
