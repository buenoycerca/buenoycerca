import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/payment_method_screen/models/payment_method_model.dart';

class PaymentMethodController extends GetxController {
  Rx<PaymentMethodModel> paymentMethodModelObj = PaymentMethodModel().obs;

  RxString radioGroup = "".obs;

  RxString radioGroup1 = "".obs;

  RxString radioGroup2 = "".obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
