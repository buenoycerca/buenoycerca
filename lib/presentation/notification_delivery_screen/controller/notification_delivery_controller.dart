import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/notification_delivery_screen/models/notification_delivery_model.dart';

class NotificationDeliveryController extends GetxController {
  Rx<NotificationDeliveryModel> notificationDeliveryModelObj =
      NotificationDeliveryModel().obs;

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
    notificationDeliveryModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    notificationDeliveryModelObj.value.dropdownItemList.refresh();
  }
}
