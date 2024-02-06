import '../controller/home_vone_container_controller.dart';
import 'package:get/get.dart';

class HomeVoneContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeVoneContainerController());
  }
}
