import '../controller/register_active_one_controller.dart';
import 'package:get/get.dart';

class RegisterActiveOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterActiveOneController());
  }
}
