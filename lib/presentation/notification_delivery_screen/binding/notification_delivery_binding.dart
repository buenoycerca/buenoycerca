import '../controller/notification_delivery_controller.dart';
import 'package:get/get.dart';

class NotificationDeliveryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationDeliveryController());
  }
}
