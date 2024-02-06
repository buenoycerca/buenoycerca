import 'package:get/get.dart';
import 'listarrowdown_item_model.dart';

class ForgetPasswordEmptyModel {
  RxList<ListarrowdownItemModel> listarrowdownItemList =
      RxList.generate(2, (index) => ListarrowdownItemModel());
}
