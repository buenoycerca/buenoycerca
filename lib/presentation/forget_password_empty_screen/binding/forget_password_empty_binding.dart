import '../controller/forget_password_empty_controller.dart';
import 'package:get/get.dart';

class ForgetPasswordEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgetPasswordEmptyController());
  }
}
