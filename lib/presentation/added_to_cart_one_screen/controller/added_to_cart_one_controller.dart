import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/added_to_cart_one_screen/models/added_to_cart_one_model.dart';
import 'package:flutter/material.dart';

class AddedToCartOneController extends GetxController {
  TextEditingController priceOneController = TextEditingController();

  Rx<AddedToCartOneModel> addedToCartOneModelObj = AddedToCartOneModel().obs;

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
