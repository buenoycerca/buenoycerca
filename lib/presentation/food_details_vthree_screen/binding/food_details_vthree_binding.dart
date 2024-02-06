import '../controller/food_details_vthree_controller.dart';
import 'package:get/get.dart';

class FoodDetailsVthreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FoodDetailsVthreeController());
  }
}
