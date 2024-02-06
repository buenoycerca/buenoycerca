import '../controller/trending_now_vtwo_controller.dart';
import 'package:get/get.dart';

class TrendingNowVtwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrendingNowVtwoController());
  }
}
