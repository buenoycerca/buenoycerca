import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/phone_number_active_one_screen/models/phone_number_active_one_model.dart';
import 'package:flutter/material.dart';

class PhoneNumberActiveOneController extends GetxController {
  TextEditingController group218Controller = TextEditingController();

  Rx<PhoneNumberActiveOneModel> phoneNumberActiveOneModelObj =
      PhoneNumberActiveOneModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group218Controller.dispose();
  }
}
