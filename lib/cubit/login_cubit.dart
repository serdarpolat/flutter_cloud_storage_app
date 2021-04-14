import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginState(isLogin: false));
  void changeLogin() => emit(LoginState(isLogin: !state.isLogin));
}
