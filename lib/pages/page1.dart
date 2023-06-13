import 'package:bitumen_app/data/data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/bitumenradiotile.dart';
import '../widgets/calculate_button.dart';
import '../widgets/currency_dropdown.dart';
import '../widgets/distanceinputwidget.dart';

class Page1 extends StatelessWidget {
  final Mydata1 mydata1 = Get.put(Mydata1());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
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
                  "${mydata1.FinalCurrency.toStringAsFixed(2)} ${mydata1.selectedCurrency.value}",
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
                "Bitumen Content: ${mydata1.FinalAnswer} %",
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
                  BitumenRadioTile(
                      text: 'Bulk Bitumen', value: 'Bulk Bitumen'),
                  SizedBox(width: 10),
                  BitumenRadioTile(
                      text: 'Packed Bitumen', value: 'Packed Bitumen'),
                ],
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                String dis = mydata1.mycont.value.toString();
                mydata1.calculate(dis);
                mydata1.calculatecurrency(dis);
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
    );
  }
}
