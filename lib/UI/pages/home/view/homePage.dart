import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:helloworld/UI/pages/home/controler/home_page_controler.dart';
import 'package:helloworld/core/color.dart';
import 'package:helloworld/ui/pages/home/componentes/app_bottom_bar_item.dart';
import 'package:helloworld/ui/pages/home/componentes/visit_list_item.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);
  final homePagecontroler = Get.put(HomePagecontroler());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => homePagecontroler.isloading.value
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Container(
                child: Obx(
                  () => ListView.builder(
                    itemCount: homePagecontroler.visitList.length,
                    itemBuilder: (_, index) {
                      return VisitListItem(
                        image: index,
                      );
                    },
                  ),
                ),
              ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 60.0,
          color: appPrimaryColor,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppBottomBarItem(
                icon: Icon(Icons.menu),
                label: 'Visita',
                onPressed: () => null,
              ),
              Expanded(
                child: Container(),
              ),
              AppBottomBarItem(
                icon: Icon(Icons.list),
                label: 'Tarefa',
                onPressed: () => null,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {homePagecontroler.add()},
        tooltip: 'Increment Counter',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: appPrimaryDarkColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
