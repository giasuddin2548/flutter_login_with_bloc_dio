import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:login_bloc_pattern/data_layer/models/data.dart';
import 'package:login_bloc_pattern/data_layer/repositories/login_repo.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {

  LoginRepo loginRepo;




  LoginBloc({required this.loginRepo}) : super(LoginInitial()) {
    on<LoginClickEvent>((event, emit) async{
      await _loginRequest(event, emit);
    });
  }

 Future<void> _loginRequest(LoginClickEvent event, Emitter<LoginState> emit)async {
   var map={
     'mobile':event.phoneNo,
     'password':event.password
   };
    emit(LoginStatusLoading());
   List<LoginResponseData> list =[];
   await loginRepo.receivedLoginResponse(map).then((value){
     list=value;
   });
    emit(LoginStatusLoaded(list));
 }


}
