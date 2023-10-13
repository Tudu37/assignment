
import 'package:assignment/data/models/userModel.dart';
import 'package:assignment/data/repository/apiDio/apiDio.dart';
import 'package:dio/dio.dart';

class UserRepository{

  ApiDio apiDio = ApiDio();

  
  Future<List<UserModel>> fetchUsers ()async{
    Dio dio = Dio();
    try{
      Response response = await apiDio.getDio().get("/users");
      // Response response = await dio.get("https://jsonplaceholder.typicode.com/users");
      List userList = response.data;
      return userList.map((e) => UserModel.fromJson(e)).toList();
    }catch(ex){
      throw ex;
    }
    
  }

}