import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/home_vfour_screen/models/home_vfour_model.dart';
import 'package:flutter/material.dart';

class HomeVfourController extends GetxController {
  TextEditingController componentNineteenController = TextEditingController();

  Rx<HomeVfourModel> homeVfourModelObj = HomeVfourModel().obs;

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
    homeVfourModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    homeVfourModelObj.value.dropdownItemList.refresh();
  }
}
