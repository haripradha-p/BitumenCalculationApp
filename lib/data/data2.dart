import 'package:get/get.dart';
import 'data.dart';

class Mydata2 extends GetxController {
  final Mydata1 mydata1 = Get.put(Mydata1());
  var answer2 = 0.0.obs;
  var cur2 = 0.0.obs;

  void calculate(String dis) {
    double distance;

    try {
      distance = double.parse(mydata1.mycont.text);
    } catch (e) {
      distance = 0.0; 
    }
    if (mydata1.selectedUnit == 'km') {
      answer2.value = distance * 0.02 * 100;
    } else if (mydata1.selectedUnit == 'm') {
      answer2.value = (distance / 1000) * 0.02 * 100;
    }
  }

  void calculatecurrency(String dis) {
    double distance;
    try {
      distance = double.parse(mydata1.mycont.text);
    } catch (e) {
      distance = 0.0; 
    }
    double rate =
        mydata1.selectedAdditive.value == 'Zycotherm' ? 1121.0 : 200.0;
    double conversionRate = 1.0;

    switch (mydata1.selectedCurrency.value) {
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

    cur2.value = distance * rate * conversionRate;
  }

  double get FinalCurrency => cur2.value;
  double get FinalAnswer => answer2.value;
}
