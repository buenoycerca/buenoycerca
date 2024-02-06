import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/added_to_cart_two_screen/models/added_to_cart_two_model.dart';
import 'package:flutter/material.dart';

class AddedToCartTwoController extends GetxController {
  TextEditingController priceOneController = TextEditingController();

  Rx<AddedToCartTwoModel> addedToCartTwoModelObj = AddedToCartTwoModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    priceOneController.dispose();
  }
}
