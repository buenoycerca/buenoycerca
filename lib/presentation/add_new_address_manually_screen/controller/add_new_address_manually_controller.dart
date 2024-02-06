import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/add_new_address_manually_screen/models/add_new_address_manually_model.dart';
import 'package:flutter/material.dart';

class AddNewAddressManuallyController extends GetxController {
  TextEditingController groupSixtyNineController = TextEditingController();

  TextEditingController groupSeventyController = TextEditingController();

  Rx<AddNewAddressManuallyModel> addNewAddressManuallyModelObj =
      AddNewAddressManuallyModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupSixtyNineController.dispose();
    groupSeventyController.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    addNewAddressManuallyModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    addNewAddressManuallyModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    selectedDropDownValue1 = value as SelectionPopupModel;
    addNewAddressManuallyModelObj.value.dropdownItemList1.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    addNewAddressManuallyModelObj.value.dropdownItemList1.refresh();
  }
}
