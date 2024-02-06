import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/food_details_favourite_screen/models/food_details_favourite_model.dart';

class FoodDetailsFavouriteController extends GetxController {
  Rx<FoodDetailsFavouriteModel> foodDetailsFavouriteModelObj =
      FoodDetailsFavouriteModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
