import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/restaurants_near_you_vone_screen/models/restaurants_near_you_vone_model.dart';
import 'package:flutter/material.dart';

class RestaurantsNearYouVoneController extends GetxController {
  TextEditingController componentNineteenController = TextEditingController();

  Rx<RestaurantsNearYouVoneModel> restaurantsNearYouVoneModelObj =
      RestaurantsNearYouVoneModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    componentNineteenController.dispose();
  }
}
