import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConverterController extends GetxController {
  var convertedValue = ''.obs;
  TextEditingController inputController = TextEditingController();

  void convert() {
    // Perform conversion logic here
    double inputValue = double.tryParse(inputController.text) ?? 0.0;
    convertedValue.value = (inputValue * 2).toString(); // Example conversion
  }
}
