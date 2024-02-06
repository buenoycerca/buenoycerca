import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/phone_number_active_two_screen/models/phone_number_active_two_model.dart';
import 'package:flutter/material.dart';

class PhoneNumberActiveTwoController extends GetxController {
  TextEditingController group337Controller = TextEditingController();

  Rx<PhoneNumberActiveTwoModel> phoneNumberActiveTwoModelObj =
      PhoneNumberActiveTwoModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group337Controller.dispose();
  }
}
