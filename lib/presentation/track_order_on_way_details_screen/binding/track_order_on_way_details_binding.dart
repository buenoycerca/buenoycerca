import '../controller/track_order_on_way_details_controller.dart';
import 'package:get/get.dart';

class TrackOrderOnWayDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrackOrderOnWayDetailsController());
  }
}
