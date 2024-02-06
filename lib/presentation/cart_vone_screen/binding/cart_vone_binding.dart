import '../controller/cart_vone_controller.dart';
import 'package:get/get.dart';

class CartVoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CartVoneController());
  }
}
