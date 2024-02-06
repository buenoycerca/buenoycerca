import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/trending_now_vone_screen/models/trending_now_vone_model.dart';
import 'package:flutter/material.dart';

class TrendingNowVoneController extends GetxController {
  TextEditingController componentNineteenController = TextEditingController();

  Rx<TrendingNowVoneModel> trendingNowVoneModelObj = TrendingNowVoneModel().obs;

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
