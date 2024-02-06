import '../controller/home_vfour_controller.dart';
import 'package:get/get.dart';

class HomeVfourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeVfourController());
  }
}
