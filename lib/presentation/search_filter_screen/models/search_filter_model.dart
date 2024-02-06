import 'package:get/get.dart';
import 'searchfilter_item_model.dart';

class SearchFilterModel {
  RxList<SearchfilterItemModel> searchfilterItemList =
      RxList.generate(3, (index) => SearchfilterItemModel());
}
