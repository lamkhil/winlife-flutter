import 'package:get/get.dart';
import 'package:winlife/controller/chat_controller.dart';

class ChatBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ChatController());
  }
}
