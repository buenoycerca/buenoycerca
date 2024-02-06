import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/favourite_vtwo_screen/models/favourite_vtwo_model.dart';
import 'package:flutter/material.dart';

class FavouriteVtwoController extends GetxController {
  TextEditingController componentNineteenController = TextEditingController();

  Rx<FavouriteVtwoModel> favouriteVtwoModelObj = FavouriteVtwoModel().obs;

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
    favouriteVtwoModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    favouriteVtwoModelObj.value.dropdownItemList.refresh();
  }
}
