import 'package:get/get.dart';
import 'package:winlife/controller/main_controller.dart';

class MainBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(MainController());
  }
}
