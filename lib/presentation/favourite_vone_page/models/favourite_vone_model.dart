import 'package:get/get.dart';
import 'favouritevone_item_model.dart';
import 'package:buenoycerca/data/models/selectionPopupModel/selection_popup_model.dart';

class FavouriteVoneModel {
  RxList<FavouritevoneItemModel> favouritevoneItemList =
      RxList.generate(4, (index) => FavouritevoneItemModel());

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
