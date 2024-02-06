import '../controller/search_filter_active_controller.dart';
import 'package:get/get.dart';

class SearchFilterActiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchFilterActiveController());
  }
}
