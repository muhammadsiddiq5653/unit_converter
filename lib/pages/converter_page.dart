import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unit_converter/controllers/converter_controller.dart';

class ConverterPage extends StatelessWidget {
  final String option;

  ConverterPage({super.key, required this.option});

  final ConverterController controller = Get.put(ConverterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Convert $option'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: controller.inputController,
              decoration: const InputDecoration(
                labelText: 'Enter value',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => controller.convert(),
              child: const Text('Convert'),
            ),
            const SizedBox(height: 20),
            Obx(() => Text(
                  'Converted Value: ${controller.convertedValue}',
                  style: const TextStyle(fontSize: 20),
                )),
          ],
        ),
      ),
    );
  }
}
