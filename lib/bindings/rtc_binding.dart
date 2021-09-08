import 'package:get/get.dart';
import 'package:winlife/controller/rtc_controller.dart';

class RTCBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(RTCController());
  }
}
