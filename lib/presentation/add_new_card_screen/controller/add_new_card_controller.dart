import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/add_new_card_screen/models/add_new_card_model.dart';
import 'package:flutter/material.dart';

class AddNewCardController extends GetxController {
  TextEditingController group521Controller = TextEditingController();

  Rx<AddNewCardModel> addNewCardModelObj = AddNewCardModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group521Controller.dispose();
  }
}
