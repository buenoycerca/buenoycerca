import 'package:get/get.dart';
import 'listdishname_item_model.dart';

class CartV1CouponModel {
  RxList<ListdishnameItemModel> listdishnameItemList =
      RxList.generate(2, (index) => ListdishnameItemModel());
}
