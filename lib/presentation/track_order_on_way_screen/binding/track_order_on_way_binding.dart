import '../controller/track_order_on_way_controller.dart';
import 'package:get/get.dart';

class TrackOrderOnWayBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrackOrderOnWayController());
  }
}
