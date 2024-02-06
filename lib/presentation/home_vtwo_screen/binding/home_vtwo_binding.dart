import '../controller/home_vtwo_controller.dart';
import 'package:get/get.dart';

class HomeVtwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeVtwoController());
  }
}
