import '../controller/verification_empty_controller.dart';
import 'package:get/get.dart';

class VerificationEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerificationEmptyController());
  }
}
