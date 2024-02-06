import '../controller/search_vone_controller.dart';
import 'package:get/get.dart';

class SearchVoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchVoneController());
  }
}
