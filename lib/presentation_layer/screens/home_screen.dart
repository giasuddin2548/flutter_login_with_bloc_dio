import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_bloc_pattern/business_logic_layer/login_bloc/login_bloc.dart';
class HomeScreen extends StatelessWidget {

  var phoneController=TextEditingController();
  var passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    phoneController.text='01811913041';
    passwordController.text='Gnternet';

    final provider=BlocProvider.of<LoginBloc>(context);
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(),
        body: Container(
          margin: const EdgeInsets.all(10),
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // color: Colors.green,
                  width: double.infinity,
                  height: 70,
                  child: const Center(child: Text('Login With Bloc Pattern', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  // color: Colors.green,
                  width: double.infinity,
                  height: 70,
                  child: TextField(
                    decoration: const InputDecoration(
                        hintText: 'Phone No'
                    ),
                    controller: phoneController,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  // color: Colors.green,
                  width: double.infinity,
                  height: 70,
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: 'Password'
                    ),
                    controller: passwordController,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  // color: Colors.green,
                  width: double.infinity,
                  height: 10,

                ),
                Container(
                  margin: const EdgeInsets.only(left: 80, right: 80),
                  // color: Colors.amber,
                  width: double.infinity,
                  height: 40,
                  child: BlocBuilder<LoginBloc, LoginState>(
                      builder: (context, state) {
                        if(state is LoginStatusLoading){
                         return  Container(
                             width: 40,
                             height: 40,
                             child: const Center(child: CircularProgressIndicator()));

                        }else if(state is LoginStatusLoaded){
                          return RaisedButton(onPressed: (){

                            provider.add(LoginClickEvent(phoneNo: phoneController.text, password: passwordController.text));

                          }, child: const Text('Login'),);
                        }else{
                          return RaisedButton(onPressed: (){

                            provider.add(LoginClickEvent(phoneNo: phoneController.text, password: passwordController.text));

                          }, child: const Text('Login'),);
                        }
                      }
                  ),
                  // child:

                ),

                // Center(child: Text('Login Status', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),))
                Container(
                  // color: Colors.green,
                  width: double.infinity,
                  height: 70,
                  child: BlocBuilder<LoginBloc, LoginState>(
                    builder:  (context, state) {

                      if(state is LoginStatusLoaded){
                        return  Center(child: Text('Login Success ${state.list[0].username.toString()}', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),));
                      }else{
                        return  const Center(child: Text('Login Status', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),));
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),

      ),
    );
  }
}

