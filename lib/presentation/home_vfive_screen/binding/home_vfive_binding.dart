import '../controller/home_vfive_controller.dart';
import 'package:get/get.dart';

class HomeVfiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeVfiveController());
  }
}
