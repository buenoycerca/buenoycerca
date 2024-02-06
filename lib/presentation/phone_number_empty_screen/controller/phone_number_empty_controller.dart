import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/phone_number_empty_screen/models/phone_number_empty_model.dart';
import 'package:flutter/material.dart';

class PhoneNumberEmptyController extends GetxController {
  TextEditingController group119Controller = TextEditingController();

  Rx<PhoneNumberEmptyModel> phoneNumberEmptyModelObj =
      PhoneNumberEmptyModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group119Controller.dispose();
  }
}
