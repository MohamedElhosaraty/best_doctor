import 'package:best_doctor/core/networking/api_error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_state.freezed.dart';

@freezed
class SignUpState<T> with _$SignUpState<T>
{
  const factory SignUpState.initial() = _Initial;
  const factory SignUpState.signUpLoading() = Loading;
  const factory SignUpState.signUpSuccess(T data) = Success<T>;
  const factory SignUpState.signUpError(ApiErrorModel apiErrorModel) = Error;
}


