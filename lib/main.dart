import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unit_converter/bindings/app_bindings.dart';
import 'package:unit_converter/controllers/home_controller.dart';
import 'package:unit_converter/pages/home_page.dart';

import 'themes/dark_theme.dart';
import 'themes/light_theme.dart';

void main() {
  Get.lazyPut<HomeController>(() => HomeController(), fenix: true);

  runApp(const UnitConverterApp());
}

class UnitConverterApp extends StatelessWidget {
  const UnitConverterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AppBindings(),
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode:
          ThemeMode.system, // Automatically switches based on system theme
      home: HomePage(),
    );
  }
}
