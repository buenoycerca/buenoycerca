import '../reset_active_one_screen/widgets/listlock_item_widget.dart';
import 'controller/reset_active_one_controller.dart';
import 'models/listlock_item_model.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/widgets/custom_button.dart';
import 'package:buenoycerca/widgets/custom_icon_button.dart';

class ResetActiveOneScreen extends GetWidget<ResetActiveOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 35, top: 28, right: 35, bottom: 28),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomIconButton(
                          height: 50,
                          width: 50,
                          onTap: () {
                            onTapBtnArrowleft();
                          },
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowleft)),
                      Container(
                          width: getHorizontalSize(196),
                          margin: getMargin(top: 61),
                          child: Text("msg_reset_your_password".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRedHatDisplayBold38Black900)),
                      Padding(
                          padding: getPadding(top: 37),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(20));
                              },
                              itemCount: controller.resetActiveOneModelObj.value
                                  .listlockItemList.length,
                              itemBuilder: (context, index) {
                                ListlockItemModel model = controller
                                    .resetActiveOneModelObj
                                    .value
                                    .listlockItemList[index];
                                return ListlockItemWidget(model);
                              }))),
                      CustomButton(
                          height: getVerticalSize(66),
                          text: "lbl_reset".tr.toUpperCase(),
                          margin: getMargin(top: 32, bottom: 5))
                    ]))));
  }

  onTapBtnArrowleft() {
    Get.back();
  }
}
