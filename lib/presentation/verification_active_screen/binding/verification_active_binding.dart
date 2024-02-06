import '../controller/verification_active_controller.dart';
import 'package:get/get.dart';

class VerificationActiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerificationActiveController());
  }
}
