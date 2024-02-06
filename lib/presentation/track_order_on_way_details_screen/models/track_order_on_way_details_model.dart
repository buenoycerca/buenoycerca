import 'package:get/get.dart';
import 'listbookmark1_item_model.dart';

class TrackOrderOnWayDetailsModel {
  RxList<Listbookmark1ItemModel> listbookmark1ItemList =
      RxList.generate(2, (index) => Listbookmark1ItemModel());
}
