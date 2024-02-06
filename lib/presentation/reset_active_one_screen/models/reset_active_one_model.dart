import 'package:get/get.dart';
import 'listlock_item_model.dart';

class ResetActiveOneModel {
  RxList<ListlockItemModel> listlockItemList =
      RxList.generate(2, (index) => ListlockItemModel());
}
