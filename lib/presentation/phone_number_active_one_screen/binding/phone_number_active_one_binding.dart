import '../controller/phone_number_active_one_controller.dart';
import 'package:get/get.dart';

class PhoneNumberActiveOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PhoneNumberActiveOneController());
  }
}
