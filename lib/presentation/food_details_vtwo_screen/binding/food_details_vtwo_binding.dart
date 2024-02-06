import '../controller/food_details_vtwo_controller.dart';
import 'package:get/get.dart';

class FoodDetailsVtwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FoodDetailsVtwoController());
  }
}
