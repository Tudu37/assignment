
import 'package:assignment/data/repository/userRepository.dart';
import 'package:assignment/logic/getxState.dart';
import 'package:assignment/logic/providerState.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    // var provider = Provider.of<providerState>(context,listen: false);
    // getController controller = Get.put(getController());

    return Scaffold(
      appBar: AppBar(
        title: Text("Users"),
        centerTitle: true,
      ),
      body: Consumer<providerState>(
       builder: (context,provider,child){
         if(provider.isLoading==false)
           return Center(child: CircularProgressIndicator());

         return SafeArea(
           child: ListView.builder(
             shrinkWrap: true,
               itemCount: provider.users.length,
               itemBuilder: (context,index){
                 return ListTile(
                   leading: Text(provider.users[index].id.toString()),
                   title:Text(provider.users[index].username) ,
                   subtitle: Text(provider.users[index].email) ,
                 );
               }
           ),
         );
       },

      )

    );
  }
}
