part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {

}


class LoginClickEvent extends LoginEvent{

  String phoneNo;
  String password;
  LoginClickEvent({required this.phoneNo,required this.password});

  @override
  List<Object?> get props => [];

}
