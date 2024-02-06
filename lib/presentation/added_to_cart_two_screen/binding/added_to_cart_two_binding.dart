import '../controller/added_to_cart_two_controller.dart';
import 'package:get/get.dart';

class AddedToCartTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddedToCartTwoController());
  }
}
