import 'controller/phone_number_active_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/widgets/custom_button.dart';
import 'package:buenoycerca/widgets/custom_icon_button.dart';
import 'package:buenoycerca/widgets/custom_text_form_field.dart';

class PhoneNumberActiveTwoScreen
    extends GetWidget<PhoneNumberActiveTwoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray100,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 35, top: 30, right: 35, bottom: 30),
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
                          width: getHorizontalSize(316),
                          margin: getMargin(top: 59, right: 41),
                          child: Text("msg_enter_your_phone_number".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRedHatDisplayBold38Black900)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.group337Controller,
                          hintText: "lbl_0000_0000_0000".tr,
                          margin: getMargin(top: 37),
                          variant: TextFormFieldVariant.OutlineDeeporangeA400,
                          fontStyle: TextFormFieldFontStyle
                              .RedHatDisplayMedium14DeeporangeA400,
                          textInputAction: TextInputAction.done,
                          prefix: Container(
                              margin: getMargin(
                                  left: 23, top: 21, right: 19, bottom: 21),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgCall)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(66))),
                      CustomButton(
                          height: getVerticalSize(66),
                          text: "lbl_verify".tr.toUpperCase(),
                          margin: getMargin(top: 30)),
                      CustomButton(
                          height: getVerticalSize(66),
                          text: "lbl_later".tr.toUpperCase(),
                          margin: getMargin(top: 14, bottom: 5),
                          variant: ButtonVariant.FillDeeporange50,
                          fontStyle: ButtonFontStyle
                              .RedHatDisplaySemiBold16DeeporangeA400)
                    ]))));
  }

  onTapBtnArrowleft() {
    Get.back();
  }
}
