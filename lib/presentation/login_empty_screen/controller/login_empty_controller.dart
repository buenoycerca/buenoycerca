import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/login_empty_screen/models/login_empty_model.dart';
import 'package:flutter/material.dart';

class LoginEmptyController extends GetxController {
  TextEditingController group147Controller = TextEditingController();

  TextEditingController group148Controller = TextEditingController();

  Rx<LoginEmptyModel> loginEmptyModelObj = LoginEmptyModel().obs;

  Rx<bool> isShowPassword = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group147Controller.dispose();
    group148Controller.dispose();
  }
}
