import 'package:get/get.dart';
import 'list139180foodpla_item_model.dart';
import 'package:buenoycerca/data/models/selectionPopupModel/selection_popup_model.dart';

class NotificationDeliveryModel {
  RxList<List139180foodplaItemModel> list139180foodplaItemList =
      RxList.generate(5, (index) => List139180foodplaItemModel());

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
