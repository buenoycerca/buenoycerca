import 'package:get/get.dart';
import 'listlock1_item_model.dart';

class ResetActiveTwoModel {
  RxList<Listlock1ItemModel> listlock1ItemList =
      RxList.generate(2, (index) => Listlock1ItemModel());
}
