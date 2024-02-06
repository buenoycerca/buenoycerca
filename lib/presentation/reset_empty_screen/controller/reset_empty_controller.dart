import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/reset_empty_screen/models/reset_empty_model.dart';
import 'package:flutter/material.dart';

class ResetEmptyController extends GetxController {
  TextEditingController groupTwentyThreeController = TextEditingController();

  TextEditingController groupTwentyFourController = TextEditingController();

  Rx<ResetEmptyModel> resetEmptyModelObj = ResetEmptyModel().obs;

  Rx<bool> isShowPassword = false.obs;

  Rx<bool> isShowPassword1 = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupTwentyThreeController.dispose();
    groupTwentyFourController.dispose();
  }
}
