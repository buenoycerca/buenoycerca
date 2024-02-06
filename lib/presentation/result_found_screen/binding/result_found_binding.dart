import '../controller/result_found_controller.dart';
import 'package:get/get.dart';

class ResultFoundBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ResultFoundController());
  }
}
