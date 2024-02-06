import '../controller/login_empty_controller.dart';
import 'package:get/get.dart';

class LoginEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginEmptyController());
  }
}
