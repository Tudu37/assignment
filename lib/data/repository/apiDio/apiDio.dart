
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiDio{

  Dio _dio = Dio();

 ApiDio(){
   _dio.options.baseUrl="https://jsonplaceholder.typicode.com/";
   _dio.interceptors.add(PrettyDioLogger());
 }

 Dio getDio(){
   return _dio;
 }

}