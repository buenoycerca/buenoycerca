import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/notification_news_updates_screen/models/notification_news_updates_model.dart';

class NotificationNewsUpdatesController extends GetxController {
  Rx<NotificationNewsUpdatesModel> notificationNewsUpdatesModelObj =
      NotificationNewsUpdatesModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    notificationNewsUpdatesModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    notificationNewsUpdatesModelObj.value.dropdownItemList.refresh();
  }
}
