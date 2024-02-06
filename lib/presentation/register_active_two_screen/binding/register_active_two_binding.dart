import '../controller/register_active_two_controller.dart';
import 'package:get/get.dart';

class RegisterActiveTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterActiveTwoController());
  }
}
