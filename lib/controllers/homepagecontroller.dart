import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bitumen_app/pages/page1.dart';
import 'package:bitumen_app/pages/page2.dart';
import 'package:bitumen_app/pages/page3.dart';
import 'package:bitumen_app/pages/page4.dart';

import '../data/data.dart';
import '../data/data2.dart';
import '../data/data3.dart';

class HomePageController extends GetxController {
  var selectedIndex = 0.obs;
  final Mydata1 mydata1 = Get.put(Mydata1());
  final Mydata2 mydata2 = Get.put(Mydata2());
  final Mydata3 mydata3 = Get.put(Mydata3());

  final List<Widget> children = [
    Page1(),
    Page2(),
    Page3(),
    Page4(),
  ];

  final List<IconData> iconDataList = [
    Icons.home,
    Icons.search,
    Icons.video_call,
    Icons.shop,
  ];

  final List<String> labelList = [
    'Bitumen',
    'Additive',
    'Lime&Cement',
    'Info',
  ];

  final List<String> PageList = [
    'Bitumen Calculation',
    'Additive Calculation',
    'Lime and Cement Calculation',
    'Bitumen Additive Overview',
  ];

  void navigateBottomNavBar(int index) {
    selectedIndex.value = index;
    mydata1.calculate(mydata1.mycont.value.toString());
    mydata2.calculate(mydata1.mycont.value.toString());
    mydata3.calculate(mydata1.mycont.value.toString());
    mydata1.calculatecurrency(mydata1.mycont.value.toString());
    mydata2.calculatecurrency(mydata1.mycont.value.toString());
    mydata3.calculatecurrency(mydata1.mycont.value.toString());
  }

  Color getIconColor(int index) {
    return selectedIndex.value == index ? Colors.white : Colors.black;
  }
}
