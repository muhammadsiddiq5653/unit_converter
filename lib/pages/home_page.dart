import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unit_converter/controllers/home_controller.dart';
import 'package:unit_converter/pages/converter_page.dart';

class HomePage extends StatelessWidget {
  final HomeController controller = Get.find();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Unit Converter'),
        actions: [
          IconButton(
            icon: const Icon(Icons.brightness_6),
            onPressed: () {
              controller.toggleTheme();
            },
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16),
        children: controller.conversionOptions.map((option) {
          return GestureDetector(
            onTap: () => Get.to(() => ConverterPage(option: option)),
            child: Card(
              elevation: 4,
              child: Center(
                child: Text(
                  option,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
