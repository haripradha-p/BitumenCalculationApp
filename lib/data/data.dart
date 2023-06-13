import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Mydata1 extends GetxController {
  TextEditingController mycont = TextEditingController();
  RxString selectedUnit = 'km'.obs;
  var distanceInKm = 0.0.obs;
  var answer = 0.0.obs;
  var cur = 0.0.obs;
  var selectedBitumenType = 'Bulk Bitumen'.obs;
  List<String> currencies = ['Rupees', 'Euros', 'Dollars', 'Pounds', 'Yen'];
  RxString selectedCurrency = 'Rupees'.obs;
  List<String> additives = ['Zycotherm', 'Sasobit'];
  var selectedAdditive = 'Zycotherm'.obs;
  List<String> substs = ['Lime', 'Cement'];
  var selectedSubst = 'Cement'.obs;

  void changeBitumenType(bitumenType) =>
      selectedBitumenType.value = bitumenType;
  void changeCurrency(currency) => selectedCurrency.value = currency;
  void changeAdditive(additive) => selectedAdditive.value = additive;
  void changeSubst(subst) => selectedSubst.value = subst;

  void calculate(String dis) {
    double distance;
    try {
      distance = double.parse(mycont.text);
    } catch (e) {
      distance = 0.0; // set a default value
    }
    if (selectedUnit == 'km') {
      answer.value = distance * 0.053 * 100;
    } else if (selectedUnit == 'm') {
      answer.value = (distance / 1000) * 0.053 * 100;
    }
  }

  void calculatecurrency(String dis) {
    double distance;
    try {
      distance = double.parse(mycont.text);
    } catch (e) {
      distance = 0.0; 
    }
    double rate =
        selectedBitumenType.value == 'Bulk Bitumen' ? 61680.0 : 66589.0;
    double conversionRate = 1.0;

    switch (selectedCurrency.value) {
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

    if (selectedUnit.value == 'm') {
      distance /= 1000;
    }

    cur.value = distance * rate * conversionRate;
  }

  double get FinalCurrency => cur.value;
  double get FinalAnswer => answer.value;

  void setDistance(double distance, String unit) {
    if (unit == 'km') {
      distanceInKm.value = distance;
    } else if (unit == 'm') {
      distanceInKm.value = distance / 1000;
    }
  }

  void changeUnit(dynamic unit) {
    selectedUnit.value = unit;
  }
}
