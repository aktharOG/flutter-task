import 'package:dio/dio.dart';

import '../controller/login_controller.dart';
import 'package:get/get.dart' as g;

class Api{
    final Dio dio = Dio();
    api()  {
      final controller =  g.Get.put(LoginController());
   final urlid = controller.user!["url_id"];
   final token = controller.user!["access"];
   final refreshToken = controller.user!["refresh"];
dio.interceptors.add(InterceptorsWrapper(onRequest: (options,handler)async{
  if(!options.path.contains('http')){
    options.path = 'http://flutter.noviindus.co.in/api'+options.path;
  }
  options.headers['Authorization'] = 'Bearer $token';
  return handler.next(options);
},
onError: (DioError error,handler)async{
  if((error.response?.statusCode==401 && error.response?.data['message'] =="Invalid JWT")){

    if(refreshToken !=null){
    if(await refreshToken()){
      return handler.resolve(await _retry(error.requestOptions));
    }
    }
  }
  return handler.next(error);
}
));

  }
      Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
    final options = Options(
      method: requestOptions.method,
      headers: requestOptions.headers,
    );
    return dio.request<dynamic>(requestOptions.path,
        data: requestOptions.data,
        queryParameters: requestOptions.queryParameters,
        options: options);
  }

     Future<bool> refreshToken()async{
            final controller =  g.Get.put(LoginController());
               var token = controller.user!["access"];
               final refreshToken = controller.user!["refresh"];
           final response = await dio.post("/api/token/refresh/",data: {
            'token_refresh': refreshToken
           });

           if(response.statusCode==201){
            token = response.data;
            return true;
           }else{
            token = null;
            return false;
           }

     }
}