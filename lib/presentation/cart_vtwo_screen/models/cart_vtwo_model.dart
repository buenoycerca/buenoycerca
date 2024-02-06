import 'package:get/get.dart';
import 'cartvtwo_item_model.dart';

class CartVtwoModel {
  RxList<CartvtwoItemModel> cartvtwoItemList =
      RxList.generate(2, (index) => CartvtwoItemModel());
}
