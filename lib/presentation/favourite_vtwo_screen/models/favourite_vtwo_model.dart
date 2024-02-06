import 'package:get/get.dart';
import 'favouritevtwo_item_model.dart';
import 'package:buenoycerca/data/models/selectionPopupModel/selection_popup_model.dart';

class FavouriteVtwoModel {
  RxList<FavouritevtwoItemModel> favouritevtwoItemList =
      RxList.generate(4, (index) => FavouritevtwoItemModel());

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
