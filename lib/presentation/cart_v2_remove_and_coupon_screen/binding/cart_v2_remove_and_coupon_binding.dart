import '../controller/cart_v2_remove_and_coupon_controller.dart';
import 'package:get/get.dart';

class CartV2RemoveAndCouponBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CartV2RemoveAndCouponController());
  }
}
