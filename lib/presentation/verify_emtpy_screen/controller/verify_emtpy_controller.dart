import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/verify_emtpy_screen/models/verify_emtpy_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

class VerifyEmtpyController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<VerifyEmtpyModel> verifyEmtpyModelObj = VerifyEmtpyModel().obs;

  @override
  void codeUpdated() {
    otpController.value.text = code!;
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
