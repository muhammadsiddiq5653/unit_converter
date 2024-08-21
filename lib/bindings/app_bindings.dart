import 'package:get/get.dart';
import 'package:unit_converter/controllers/home_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
