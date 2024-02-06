import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/search_filter_active_screen/models/search_filter_active_model.dart';

class SearchFilterActiveController extends GetxController {
  Rx<SearchFilterActiveModel> searchFilterActiveModelObj =
      SearchFilterActiveModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
