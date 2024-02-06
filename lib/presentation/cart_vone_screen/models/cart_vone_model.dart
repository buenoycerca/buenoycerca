import 'package:get/get.dart';
import 'cartvone_item_model.dart';

class CartVoneModel {
  RxList<CartvoneItemModel> cartvoneItemList =
      RxList.generate(2, (index) => CartvoneItemModel());
}
