import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/cart_vone_screen/models/cart_vone_model.dart';

class CartVoneController extends GetxController {
  Rx<CartVoneModel> cartVoneModelObj = CartVoneModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
