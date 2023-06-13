import 'package:bitumen_app/data/data2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../data/data.dart';
import '../widgets/page2_radiotile.dart';
import '../widgets/calculate_button.dart';
import '../widgets/currency_dropdown.dart';
import '../widgets/distanceinputwidget.dart';

class Page2 extends StatelessWidget {
  final Mydata1 mydata1 = Get.put(Mydata1());
  final Mydata2 mydata2 = Get.put(Mydata2());

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
                    "${mydata2.FinalCurrency.toStringAsFixed(2)} ${mydata1.selectedCurrency}",
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
                  "Additive Content: ${mydata2.FinalAnswer} %",
                  style: TextStyle(
                      fontSize: 25,
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
                    Page2RadioTile(text: 'Zycotherm', value: 'Zycotherm'),
                    SizedBox(width: 10),
                    Page2RadioTile(text: 'Sasobit', value: 'Sasobit'),
                  ],
                ),
              ),
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  String dis = mydata1.mycont.value.toString();
                  mydata2.calculate(dis);
                  mydata2.calculatecurrency(dis);
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
