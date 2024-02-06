import '../controller/track_order_on_way_details_one_controller.dart';
import 'package:get/get.dart';

class TrackOrderOnWayDetailsOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrackOrderOnWayDetailsOneController());
  }
}
