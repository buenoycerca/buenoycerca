import 'package:get/get.dart';
import 'listrectangle4188_item_model.dart';
import 'package:buenoycerca/data/models/selectionPopupModel/selection_popup_model.dart';

class NotificationNewsUpdatesModel {
  RxList<Listrectangle4188ItemModel> listrectangle4188ItemList =
      RxList.generate(2, (index) => Listrectangle4188ItemModel());

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
