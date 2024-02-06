import '../controller/verify_emtpy_controller.dart';
import 'package:get/get.dart';

class VerifyEmtpyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerifyEmtpyController());
  }
}
