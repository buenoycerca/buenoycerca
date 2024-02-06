import '../controller/home_vsix_controller.dart';
import 'package:get/get.dart';

class HomeVsixBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeVsixController());
  }
}
