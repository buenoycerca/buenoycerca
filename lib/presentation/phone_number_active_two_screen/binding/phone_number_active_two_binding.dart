import '../controller/phone_number_active_two_controller.dart';
import 'package:get/get.dart';

class PhoneNumberActiveTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PhoneNumberActiveTwoController());
  }
}
