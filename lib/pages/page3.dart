import 'package:bitumen_app/data/data3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/data.dart';
import '../widgets/bitumenradiotile.dart';
import '../widgets/calculate_button.dart';
import '../widgets/currency_dropdown.dart';
import '../widgets/distanceinputwidget.dart';
import '../widgets/page3_radiotile.dart';

class Page3 extends StatelessWidget {
  final Mydata1 mydata1 = Get.put(Mydata1());
  final Mydata3 mydata3 = Get.put(Mydata3());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 80),
              DistanceInputWidget(),
              SizedBox(height: 50),
              CurrencyDropdown(),
              SizedBox(height: 30),
              Text(
                "Price",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              Obx(() => Text(
                    "${mydata3.FinalCurrency.toStringAsFixed(2)} ${mydata1.selectedCurrency}",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.teal[300]),
                  )),
              SizedBox(
                height: 30,
              ),
              Obx(
                () => Text(
                  "Lime and Cement Content: ${mydata3.FinalAnswer} %",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Page3RadioTile(text: 'Cement', value: 'Cement'),
                    SizedBox(width: 10),
                    Page3RadioTile(text: 'Lime', value: 'Lime'),
                  ],
                ),
              ),
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  String dis = mydata1.mycont.value.toString();
                  mydata3.calculate(dis);
                  mydata3.calculatecurrency(dis);
                },
                child: CalculateButton(
                  Btntext: "Calculate",
                  size: MediaQuery.of(context).size,
                ),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
