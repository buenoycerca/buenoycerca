import '../forget_password_active_screen/widgets/listarrowdown1_item_widget.dart';
import 'controller/forget_password_active_controller.dart';
import 'models/listarrowdown1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/widgets/custom_button.dart';
import 'package:buenoycerca/widgets/custom_icon_button.dart';

class ForgetPasswordActiveScreen
    extends GetWidget<ForgetPasswordActiveController> {
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
                      Padding(
                          padding: getPadding(top: 62),
                          child: Text("lbl_forget_password".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRedHatDisplayBold38)),
                      Container(
                          width: getHorizontalSize(298),
                          margin: getMargin(top: 2, right: 59),
                          child: Text("msg_select_which_contact".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRedHatDisplayMedium14Gray500
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.28)))),
                      Padding(
                          padding: getPadding(top: 34),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(25));
                              },
                              itemCount: controller.forgetPasswordActiveModelObj
                                  .value.listarrowdown1ItemList.length,
                              itemBuilder: (context, index) {
                                Listarrowdown1ItemModel model = controller
                                    .forgetPasswordActiveModelObj
                                    .value
                                    .listarrowdown1ItemList[index];
                                return Listarrowdown1ItemWidget(model);
                              }))),
                      CustomButton(
                          height: getVerticalSize(66),
                          text: "lbl_next".tr.toUpperCase(),
                          margin: getMargin(top: 44, bottom: 5))
                    ]))));
  }

  onTapBtnArrowleft() {
    Get.back();
  }
}
