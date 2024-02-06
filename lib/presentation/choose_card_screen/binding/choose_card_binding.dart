import '../controller/choose_card_controller.dart';
import 'package:get/get.dart';

class ChooseCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChooseCardController());
  }
}
