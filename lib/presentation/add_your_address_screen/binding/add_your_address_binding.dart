import '../controller/add_your_address_controller.dart';
import 'package:get/get.dart';

class AddYourAddressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddYourAddressController());
  }
}
