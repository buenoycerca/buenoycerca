import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/home_vfive_screen/models/home_vfive_model.dart';
import 'package:flutter/material.dart';

class HomeVfiveController extends GetxController {
  TextEditingController componentNineteenController = TextEditingController();

  Rx<HomeVfiveModel> homeVfiveModelObj = HomeVfiveModel().obs;

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
    homeVfiveModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    homeVfiveModelObj.value.dropdownItemList.refresh();
  }
}
