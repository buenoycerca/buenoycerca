import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/cart_screen/models/cart_model.dart';

class CartController extends GetxController {
  Rx<CartModel> cartModelObj = CartModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    cartModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    cartModelObj.value.dropdownItemList.refresh();
  }
}
