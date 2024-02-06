import '../controller/restaurants_near_you_vtwo_controller.dart';
import 'package:get/get.dart';

class RestaurantsNearYouVtwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RestaurantsNearYouVtwoController());
  }
}
