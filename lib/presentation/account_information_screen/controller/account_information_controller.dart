import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/account_information_screen/models/account_information_model.dart';

class AccountInformationController extends GetxController {
  Rx<AccountInformationModel> accountInformationModelObj =
      AccountInformationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
