import '../controller/reset_active_one_controller.dart';
import 'package:get/get.dart';

class ResetActiveOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ResetActiveOneController());
  }
}
