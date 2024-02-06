import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/home_vone_page/models/home_vone_model.dart';
import 'package:flutter/material.dart';

class HomeVoneController extends GetxController {
  HomeVoneController(this.homeVoneModelObj);

  TextEditingController componentNineteenController = TextEditingController();

  Rx<HomeVoneModel> homeVoneModelObj;

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
    homeVoneModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    homeVoneModelObj.value.dropdownItemList.refresh();
  }
}
