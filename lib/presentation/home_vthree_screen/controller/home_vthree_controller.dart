import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/home_vthree_screen/models/home_vthree_model.dart';
import 'package:flutter/material.dart';

class HomeVthreeController extends GetxController {
  TextEditingController componentNineteenController = TextEditingController();

  Rx<HomeVthreeModel> homeVthreeModelObj = HomeVthreeModel().obs;

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
    homeVthreeModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    homeVthreeModelObj.value.dropdownItemList.refresh();
  }
}
