import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/register_empty_screen/models/register_empty_model.dart';
import 'package:flutter/material.dart';

class RegisterEmptyController extends GetxController {
  TextEditingController groupFiftyNineController = TextEditingController();

  TextEditingController groupSixtyController = TextEditingController();

  TextEditingController groupSixtyOneController = TextEditingController();

  Rx<RegisterEmptyModel> registerEmptyModelObj = RegisterEmptyModel().obs;

  Rx<bool> isShowPassword = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupFiftyNineController.dispose();
    groupSixtyController.dispose();
    groupSixtyOneController.dispose();
  }
}
