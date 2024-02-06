import '../controller/reset_empty_controller.dart';
import 'package:get/get.dart';

class ResetEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ResetEmptyController());
  }
}
