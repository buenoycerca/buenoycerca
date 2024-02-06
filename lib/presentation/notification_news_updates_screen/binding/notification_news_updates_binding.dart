import '../controller/notification_news_updates_controller.dart';
import 'package:get/get.dart';

class NotificationNewsUpdatesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationNewsUpdatesController());
  }
}
