import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/search_vone_screen/models/search_vone_model.dart';
import 'package:flutter/material.dart';

class SearchVoneController extends GetxController {
  TextEditingController componentNineteenController = TextEditingController();

  Rx<SearchVoneModel> searchVoneModelObj = SearchVoneModel().obs;

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
