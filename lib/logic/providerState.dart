
import 'package:assignment/data/models/userModel.dart';
import 'package:assignment/data/repository/userRepository.dart';
import 'package:flutter/foundation.dart';

class providerState extends ChangeNotifier{

  List<UserModel> users=[];
  bool isLoading = false;


  providerState(){
    fetchUsers();
  }

   fetchUsers()async{
    users = await UserRepository().fetchUsers();
    isLoading = true;
    notifyListeners();

  }

}