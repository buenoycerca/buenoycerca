import '../controller/food_details_v3_favourite_controller.dart';
import 'package:get/get.dart';

class FoodDetailsV3FavouriteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FoodDetailsV3FavouriteController());
  }
}
