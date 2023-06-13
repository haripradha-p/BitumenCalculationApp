import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../data/data.dart';
import '../data/data3.dart';

class Page3RadioTile extends StatelessWidget {
  final Mydata1 mydata1 = Get.find();
  final Mydata3 mydata3 = Get.find();
  final String text;
  final String value;

   Page3RadioTile({
    Key? key,
    required this.text,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Obx(() => 
        Expanded(
              child: RadioListTile(
                shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                title: Text(text),
                tileColor: Color.fromARGB(255, 197, 246, 243),
                contentPadding: EdgeInsets.all(2),
                dense: true,
                value: value,
                groupValue: mydata1.selectedSubst.value,
                onChanged: (value) {
                  mydata1.changeSubst(value);
                  mydata3.calculatecurrency(mydata1.mycont.value.toString());
                },
                
              ),
            ),
      
    );
  }
}
