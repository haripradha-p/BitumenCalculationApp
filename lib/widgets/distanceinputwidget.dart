import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../data/data.dart';
import '../data/data2.dart';
import '../data/data3.dart';

class DistanceInputWidget extends StatelessWidget {
  final Mydata1 mydata1 = Get.find();
  final Mydata2 mydata2 = Get.find();
  final Mydata3 mydata3 = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Row(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 200,
                  child: TextFormField(
                    controller: mydata1.mycont,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: mydata1.selectedUnit.value == 'km'
                          ? 'Distance in kilometers'
                          : 'Distance in meters',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 5),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButtonFormField<String>(
                  value: mydata1.selectedUnit.value,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(horizontal: 8),
                  ),
                  onChanged: (value) {
                    mydata1.changeUnit(value!);
                    mydata1.calculate(mydata1.mycont.value.toString());
                    mydata1.calculatecurrency(mydata1.mycont.value.toString());
                    mydata2.calculate(mydata1.mycont.value.toString());
                    mydata2.calculatecurrency(mydata1.mycont.value.toString());
                    mydata3.calculate(mydata1.mycont.value.toString());
                    mydata3.calculatecurrency(mydata1.mycont.value.toString());
                  },
                  items: [
                    DropdownMenuItem(
                      value: 'km',
                      child: Text('km'),
                    ),
                    DropdownMenuItem(
                      value: 'm',
                      child: Text('m'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
