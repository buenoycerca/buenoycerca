import '../controller/track_order_controller.dart';
import 'package:get/get.dart';

class TrackOrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrackOrderController());
  }
}
