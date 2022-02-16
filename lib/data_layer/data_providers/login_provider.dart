import 'package:dio/dio.dart';
import 'package:login_bloc_pattern/utils/my_utils.dart';

class LoginProvider{

  var header={
    "Authorization":"Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjIwMDE3OTAyMDUsImlhdCI6MTY0MTc5MDIwNSwiaXNzIjoiZXNob3AifQ.pMhVWFe_ql39Pdt4jh0D3v-_cQsO0XgqDUVlUSwEb6E"
  };



  Future<Response> loginRequest(Map<String, dynamic> data)async{
    print('HTTP:Url ${MyUtils.loginUrl}');
    print('HTTP:Header $header');
    print('HTTP:Data $data');
    Dio _dio=Dio(BaseOptions(
      headers: header,
    ));
    var response=await _dio.post(MyUtils.loginUrl, data: FormData.fromMap(data));
    print('HTTP: ${response.statusCode}');
    return response;
  }





}