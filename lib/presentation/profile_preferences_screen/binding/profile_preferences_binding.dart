import '../controller/profile_preferences_controller.dart';
import 'package:get/get.dart';

class ProfilePreferencesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfilePreferencesController());
  }
}
