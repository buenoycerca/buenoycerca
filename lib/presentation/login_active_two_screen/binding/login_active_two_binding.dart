import '../controller/login_active_two_controller.dart';
import 'package:get/get.dart';

class LoginActiveTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginActiveTwoController());
  }
}
