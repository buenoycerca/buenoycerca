import '../controller/cart_v1_coupon_controller.dart';
import 'package:get/get.dart';

class CartV1CouponBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CartV1CouponController());
  }
}
