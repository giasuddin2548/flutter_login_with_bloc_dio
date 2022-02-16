
import 'package:login_bloc_pattern/data_layer/data_providers/login_provider.dart';
import 'package:login_bloc_pattern/data_layer/models/data.dart';

class LoginRepo{
  LoginProvider loginProvider;

  LoginRepo({required this.loginProvider});

  Future<List<LoginResponseData>> receivedLoginResponse(Map<String, dynamic> data)async{
    var receivedResponse=await loginProvider.loginRequest(data);
    var tempList=receivedResponse.data['data'] as List;
    List<LoginResponseData> list=tempList.map((e) => LoginResponseData.fromJson(e)).toList();
    print('REPO Received  $runtimeType ${list.length}');
    return list;
  }

}