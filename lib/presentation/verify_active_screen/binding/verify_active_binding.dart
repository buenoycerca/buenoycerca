import '../controller/verify_active_controller.dart';
import 'package:get/get.dart';

class VerifyActiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerifyActiveController());
  }
}
