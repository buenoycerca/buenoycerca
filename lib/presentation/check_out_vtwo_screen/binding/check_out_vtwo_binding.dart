import '../controller/check_out_vtwo_controller.dart';
import 'package:get/get.dart';

class CheckOutVtwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CheckOutVtwoController());
  }
}
