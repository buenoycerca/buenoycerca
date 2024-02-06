import '../controller/register_empty_controller.dart';
import 'package:get/get.dart';

class RegisterEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterEmptyController());
  }
}
