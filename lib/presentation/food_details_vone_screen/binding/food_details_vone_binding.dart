import '../controller/food_details_vone_controller.dart';
import 'package:get/get.dart';

class FoodDetailsVoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FoodDetailsVoneController());
  }
}
