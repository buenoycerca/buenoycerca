import 'package:get/get.dart';
import 'listframe_item_model.dart';

class SearchFilterActiveModel {
  RxList<ListframeItemModel> listframeItemList =
      RxList.generate(3, (index) => ListframeItemModel());
}
