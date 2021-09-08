import 'package:get/get.dart';
import 'package:winlife/controller/quickblox_controller.dart';

class QBBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(QBController());
  }
}
