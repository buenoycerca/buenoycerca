import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/search_filter_screen/models/search_filter_model.dart';

class SearchFilterController extends GetxController {
  Rx<SearchFilterModel> searchFilterModelObj = SearchFilterModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
