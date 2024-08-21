import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final List<String> conversionOptions = [
    'Length',
    'Weight',
    'Volume',
    // Add more options as needed
  ];

  void toggleTheme() {
    Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
  }
}
