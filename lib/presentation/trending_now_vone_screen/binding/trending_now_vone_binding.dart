import '../controller/trending_now_vone_controller.dart';
import 'package:get/get.dart';

class TrendingNowVoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrendingNowVoneController());
  }
}
