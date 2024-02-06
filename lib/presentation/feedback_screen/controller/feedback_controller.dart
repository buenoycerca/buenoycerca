import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/feedback_screen/models/feedback_model.dart';

class FeedbackController extends GetxController {
  Rx<FeedbackModel> feedbackModelObj = FeedbackModel().obs;

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
    feedbackModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    feedbackModelObj.value.dropdownItemList.refresh();
  }
}
