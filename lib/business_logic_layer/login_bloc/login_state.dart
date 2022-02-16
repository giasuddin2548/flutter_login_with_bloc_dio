part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
}

class LoginInitial extends LoginState {
  @override
  List<Object> get props => [];
}

class LoginStatusLoading extends LoginState {
  @override
  List<Object> get props => [];
}

class LoginStatusLoaded extends LoginState {

  List<LoginResponseData> list;


  LoginStatusLoaded(this.list);

  @override
  List<Object> get props => [];
}





