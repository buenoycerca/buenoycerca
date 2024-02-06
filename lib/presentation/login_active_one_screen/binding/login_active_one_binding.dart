import '../controller/login_active_one_controller.dart';
import 'package:get/get.dart';

class LoginActiveOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginActiveOneController());
  }
}
