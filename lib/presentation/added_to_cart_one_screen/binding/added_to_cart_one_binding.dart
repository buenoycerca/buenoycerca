import '../controller/added_to_cart_one_controller.dart';
import 'package:get/get.dart';

class AddedToCartOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddedToCartOneController());
  }
}
