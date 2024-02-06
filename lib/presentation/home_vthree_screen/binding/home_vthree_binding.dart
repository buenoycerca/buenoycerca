import '../controller/home_vthree_controller.dart';
import 'package:get/get.dart';

class HomeVthreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeVthreeController());
  }
}
