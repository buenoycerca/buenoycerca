import '../controller/splash_vtwo_controller.dart';
import 'package:get/get.dart';

class SplashVtwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashVtwoController());
  }
}
