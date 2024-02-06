import '../controller/cart_v1_remove_item_controller.dart';
import 'package:get/get.dart';

class CartV1RemoveItemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CartV1RemoveItemController());
  }
}
