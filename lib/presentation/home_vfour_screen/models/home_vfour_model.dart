import 'package:get/get.dart';
import 'homevfour_item_model.dart';
import 'package:buenoycerca/data/models/selectionPopupModel/selection_popup_model.dart';

class HomeVfourModel {
  RxList<HomevfourItemModel> homevfourItemList =
      RxList.generate(2, (index) => HomevfourItemModel());

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
