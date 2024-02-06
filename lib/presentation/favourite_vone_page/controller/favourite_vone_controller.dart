import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/favourite_vone_page/models/favourite_vone_model.dart';
import 'package:flutter/material.dart';

class FavouriteVoneController extends GetxController {
  FavouriteVoneController(this.favouriteVoneModelObj);

  TextEditingController componentNineteenController = TextEditingController();

  TextEditingController group229Controller = TextEditingController();

  Rx<FavouriteVoneModel> favouriteVoneModelObj;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    componentNineteenController.dispose();
    group229Controller.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    favouriteVoneModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    favouriteVoneModelObj.value.dropdownItemList.refresh();
  }
}
