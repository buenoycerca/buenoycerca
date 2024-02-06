import 'package:get/get.dart';
import 'listrectanglefortytwo_item_model.dart';
import 'listrectanglefortythree_item_model.dart';
import 'package:buenoycerca/data/models/selectionPopupModel/selection_popup_model.dart';

class HomeVsixModel {
  RxList<ListrectanglefortytwoItemModel> listrectanglefortytwoItemList =
      RxList.generate(2, (index) => ListrectanglefortytwoItemModel());

  RxList<ListrectanglefortythreeItemModel> listrectanglefortythreeItemList =
      RxList.generate(2, (index) => ListrectanglefortythreeItemModel());

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
