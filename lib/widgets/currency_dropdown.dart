import 'package:bitumen_app/data/data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../data/data2.dart';
import '../data/data3.dart';

class CurrencyDropdown extends StatelessWidget {
  final Mydata1 mydata1 = Get.find();
  final Mydata2 mydata2 = Get.find();
  final Mydata3 mydata3 = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          height: 80,
          width: 300,
          child: DropdownButtonFormField(
            value: mydata1.selectedCurrency.value,
            items: mydata1.currencies
                .map((currency) => DropdownMenuItem(
                      value: currency,
                      child: Text(currency),
                    ))
                .toList(),
            onChanged: (value) {
               mydata1.changeCurrency(value);
               mydata1.calculatecurrency(mydata1.mycont.value.toString());
               mydata2.calculatecurrency(mydata1.mycont.value.toString());
               mydata3.calculatecurrency(mydata1.mycont.value.toString());

            },
            decoration: InputDecoration(
              labelText: 'Select Currency',
              border: OutlineInputBorder(),
            ),
          ),
        ));
  }
}
