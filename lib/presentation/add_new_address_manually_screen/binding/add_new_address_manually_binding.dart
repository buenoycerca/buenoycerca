import '../controller/add_new_address_manually_controller.dart';
import 'package:get/get.dart';

class AddNewAddressManuallyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddNewAddressManuallyController());
  }
}
