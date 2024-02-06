import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/home_vsix_screen/models/home_vsix_model.dart';
import 'package:flutter/material.dart';

class HomeVsixController extends GetxController {
  TextEditingController componentNineteenController = TextEditingController();

  Rx<HomeVsixModel> homeVsixModelObj = HomeVsixModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    componentNineteenController.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    homeVsixModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    homeVsixModelObj.value.dropdownItemList.refresh();
  }
}
