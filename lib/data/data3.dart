import 'package:get/get.dart';
import 'data.dart';

class Mydata3 extends GetxController {
  final Mydata1 mydata1 = Get.put(Mydata1());
  var answer3 = 0.0.obs;
  var cur3 = 0.0.obs;
  

  void calculate(String dis) {
    double distance;
    try {
      distance = double.parse(mydata1.mycont.text);
    } catch (e) {
      distance = 0.0; 
    }
    if (mydata1.selectedUnit == 'km') {
      answer3.value = distance * 0.03*100;
    } else if (mydata1.selectedUnit == 'm') {
      answer3.value = (distance / 1000) * 0.03*100;
    }
  }

  void calculatecurrency(String dis) {
  double distance;
    try {
      distance = double.parse(mydata1.mycont.text);
    } catch (e) {
      distance = 0.0; 
    }
  double rate = mydata1.selectedSubst.value == 'Cement' ? 139.0 : 25.0;
  double conversionRate = 1.0;
  
  switch(mydata1.selectedCurrency.value) {
    case 'Rupees':
      conversionRate = 1.0;
      break;
    case 'Dollars':
      conversionRate = 0.012;
      break;
    case 'Euros':
      conversionRate = 0.011;
      break;
    case 'Pounds':
      conversionRate = 0.0097;
      break;
    case 'Yen':
      conversionRate = 1.64;
      break;
    default:
      conversionRate = 1.0;
      break;
  }
  
  if (mydata1.selectedUnit.value == 'm') {
    distance /= 1000;
  }

  cur3.value = distance * rate * conversionRate;
}
 
  double get FinalCurrency => cur3.value;
  double get FinalAnswer => answer3.value;

}
