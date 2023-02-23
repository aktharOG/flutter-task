import 'package:dio/dio.dart';

class LoginService{
final Dio dio = Dio(
    BaseOptions(
     // 192.168.137.79
      baseUrl: 'http://192.168.29.27:4000',
      connectTimeout: const Duration(microseconds: 5000),
      receiveTimeout: const Duration(milliseconds: 5000),
    ),
  );
  
}