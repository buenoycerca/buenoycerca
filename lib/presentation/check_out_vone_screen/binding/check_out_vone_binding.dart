import '../controller/check_out_vone_controller.dart';
import 'package:get/get.dart';

class CheckOutVoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CheckOutVoneController());
  }
}
