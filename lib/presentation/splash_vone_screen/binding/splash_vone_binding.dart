import '../controller/splash_vone_controller.dart';
import 'package:get/get.dart';

class SplashVoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashVoneController());
  }
}
