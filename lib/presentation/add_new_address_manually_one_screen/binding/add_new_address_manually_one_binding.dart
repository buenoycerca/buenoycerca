import '../controller/add_new_address_manually_one_controller.dart';
import 'package:get/get.dart';

class AddNewAddressManuallyOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddNewAddressManuallyOneController());
  }
}
