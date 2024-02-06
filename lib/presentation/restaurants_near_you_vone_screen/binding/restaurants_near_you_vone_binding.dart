import '../controller/restaurants_near_you_vone_controller.dart';
import 'package:get/get.dart';

class RestaurantsNearYouVoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RestaurantsNearYouVoneController());
  }
}
