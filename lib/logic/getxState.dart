
import 'package:assignment/data/models/userModel.dart';
import 'package:get/get.dart';

import '../data/repository/userRepository.dart';

class getController extends GetxController {

  RxList<dynamic>users=[].obs;


  providerState(){
    fetchUsers();
    print(users.length);
  }

  void fetchUsers()async{
    users.value = await UserRepository().fetchUsers();
    print(users);

  }

}