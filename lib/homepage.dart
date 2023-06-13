import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/homepagecontroller.dart';

class HomePage extends StatelessWidget {
  final HomePageController controller = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: Colors.teal[300],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Safe roads ~ Safe life',
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(height: 5),
                Obx(() => Text(
                      controller.PageList[controller.selectedIndex.value],
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            )
          ],
        ),
      ),
      body: Obx(() => controller.children[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            backgroundColor: Colors.teal[300],
            selectedItemColor: Colors.white,
            currentIndex: controller.selectedIndex.value,
            onTap: controller.navigateBottomNavBar,
            type: BottomNavigationBarType.fixed,
            items: List.generate(
              controller.children.length,
              (index) => BottomNavigationBarItem(
                icon: Icon(
                  controller.iconDataList[index],
                  color: controller.getIconColor(index),
                ),
                label: controller.labelList[index],
              ),
            ),
          )),
    );
  }
}
