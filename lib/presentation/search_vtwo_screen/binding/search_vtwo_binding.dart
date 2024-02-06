import '../controller/search_vtwo_controller.dart';
import 'package:get/get.dart';

class SearchVtwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchVtwoController());
  }
}
