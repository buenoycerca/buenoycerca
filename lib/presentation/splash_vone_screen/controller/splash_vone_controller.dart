import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/splash_vone_screen/models/splash_vone_model.dart';

class SplashVoneController extends GetxController {
  Rx<SplashVoneModel> splashVoneModelObj = SplashVoneModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.toNamed(AppRoutes.homeVoneContainerScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
