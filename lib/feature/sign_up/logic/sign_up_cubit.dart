import 'package:best_doctor/feature/sign_up/data/models/sign_up_request_body.dart';
import 'package:best_doctor/feature/sign_up/data/repos/sign_up_repo.dart';
import 'package:best_doctor/feature/sign_up/logic/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignUpState> {

  final SignUpRepo _signUpRepo;
  SignUpCubit(this._signUpRepo) : super(const SignUpState.initial());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  void emitSignUpState () async {
    emit(const SignUpState.signUpLoading());
    final response = await _signUpRepo.signUp(
      SignUpRequestBody(
          name: nameController.text,
          email: emailController.text,
          phone: phoneController.text,
          password: passwordController.text,
          passwordConfirmation: passwordConfirmationController.text,
          gander: 0,
      ),
    );
       response.when(
           success: (loginResponse)
           {
             emit(SignUpState.signUpSuccess(loginResponse),);
           }, failure: (apiErrorModel) {
             emit(SignUpState.signUpError(apiErrorModel));
       });
  }
}
