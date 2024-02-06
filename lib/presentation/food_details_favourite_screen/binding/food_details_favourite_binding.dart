import '../controller/food_details_favourite_controller.dart';
import 'package:get/get.dart';

class FoodDetailsFavouriteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FoodDetailsFavouriteController());
  }
}
