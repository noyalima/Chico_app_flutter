import 'dart:convert';

import 'package:get/get.dart';
import 'package:helloworld/data/repositoris/entities/task_table/task_table.dart';
import 'package:helloworld/data/repositoris/model/task.dart';
import 'package:http/http.dart' as http;

class HomePagecontroler extends GetxController {
  final islogged = true.obs;
  final isloading = false.obs;
  final visitList = List<TaskResource>().obs;
  @override
  void onReady() async {
    // TODO: implement onReady
    var response = await http
        .get('https://5faaf775dbbef70016d47f6f.mockapi.io/api/v1/tasks');
    // print(response.body);

    var jsonMap = jsonDecode(response.body);
    print(jsonMap.runtimeType);
    for (Map<String, dynamic> j in jsonMap) {
      print(j);
      var task = TaskResource.fromJson(j);
      visitList.add(task);
    }
    super.onReady();
  }

  void add() async {
    print('entrou');
    //  visitList.add(TaskResource());
    isloading.value = true;
    //var database = Database
    Future.delayed(Duration(minutes: 1), (){
       isloading.value = false; 
    });
  }
}
