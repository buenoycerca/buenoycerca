import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/profile_preferences_screen/models/profile_preferences_model.dart';

class ProfilePreferencesController extends GetxController {
  Rx<ProfilePreferencesModel> profilePreferencesModelObj =
      ProfilePreferencesModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
