import '../controller/reset_active_two_controller.dart';
import 'package:get/get.dart';

class ResetActiveTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ResetActiveTwoController());
  }
}
