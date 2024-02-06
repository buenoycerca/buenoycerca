import '../controller/forget_password_active_controller.dart';
import 'package:get/get.dart';

class ForgetPasswordActiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgetPasswordActiveController());
  }
}
