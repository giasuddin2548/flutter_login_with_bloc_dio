import 'dart:io';

import 'package:flutter/material.dart';
import 'package:login_bloc_pattern/business_logic_layer/login_bloc/login_bloc.dart';
import 'package:login_bloc_pattern/data_layer/data_providers/login_provider.dart';
import 'package:login_bloc_pattern/data_layer/repositories/login_repo.dart';
import 'package:login_bloc_pattern/presentation_layer/screens/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main() async{
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginBloc>(
          create: (BuildContext context) => LoginBloc(loginRepo: LoginRepo(loginProvider: LoginProvider())),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Login App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:  HomeScreen(),
      ),
    );

  }
}

class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}

