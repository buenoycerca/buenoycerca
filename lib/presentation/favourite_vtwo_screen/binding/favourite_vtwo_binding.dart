import '../controller/favourite_vtwo_controller.dart';
import 'package:get/get.dart';

class FavouriteVtwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FavouriteVtwoController());
  }
}
