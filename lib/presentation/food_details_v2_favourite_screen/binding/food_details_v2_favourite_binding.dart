import '../controller/food_details_v2_favourite_controller.dart';
import 'package:get/get.dart';

class FoodDetailsV2FavouriteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FoodDetailsV2FavouriteController());
  }
}
