import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/home_vtwo_screen/models/home_vtwo_model.dart';
import 'package:flutter/material.dart';

class HomeVtwoController extends GetxController {
  TextEditingController componentNineteenController = TextEditingController();

  TextEditingController group297Controller = TextEditingController();

  Rx<HomeVtwoModel> homeVtwoModelObj = HomeVtwoModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    componentNineteenController.dispose();
    group297Controller.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    homeVtwoModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    homeVtwoModelObj.value.dropdownItemList.refresh();
  }
}
