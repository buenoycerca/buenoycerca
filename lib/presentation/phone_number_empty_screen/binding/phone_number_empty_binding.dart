import '../controller/phone_number_empty_controller.dart';
import 'package:get/get.dart';

class PhoneNumberEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PhoneNumberEmptyController());
  }
}
