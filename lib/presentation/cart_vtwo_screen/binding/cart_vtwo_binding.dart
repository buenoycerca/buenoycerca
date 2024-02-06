import '../controller/cart_vtwo_controller.dart';
import 'package:get/get.dart';

class CartVtwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CartVtwoController());
  }
}
