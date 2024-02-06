import 'package:get/get.dart';
import 'cart_item_model.dart';
import 'package:buenoycerca/data/models/selectionPopupModel/selection_popup_model.dart';

class CartModel {
  RxList<CartItemModel> cartItemList =
      RxList.generate(2, (index) => CartItemModel());

  RxList<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ].obs;
}
