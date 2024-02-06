import 'controller/phone_number_empty_controller.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/core/utils/validation_functions.dart';
import 'package:buenoycerca/widgets/custom_button.dart';
import 'package:buenoycerca/widgets/custom_icon_button.dart';
import 'package:buenoycerca/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PhoneNumberEmptyScreen extends GetWidget<PhoneNumberEmptyController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray100,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 35, top: 30, right: 35, bottom: 30),
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
                                  style:
                                      AppStyle.txtRedHatDisplayBold38Black900)),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.group119Controller,
                              hintText: "lbl_phone_number".tr,
                              margin: getMargin(top: 37),
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.phone,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 23, top: 21, right: 19, bottom: 21),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgCall)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(66)),
                              validator: (value) {
                                if (!isValidPhone(value)) {
                                  return "Please enter valid phone number";
                                }
                                return null;
                              }),
                          CustomButton(
                              height: getVerticalSize(66),
                              text: "lbl_verify".tr.toUpperCase(),
                              margin: getMargin(top: 30)),
                          CustomButton(
                              height: getVerticalSize(66),
                              text: "lbl_later".tr.toUpperCase(),
                              margin: getMargin(top: 13, bottom: 5),
                              variant: ButtonVariant.FillDeeporange50,
                              fontStyle: ButtonFontStyle
                                  .RedHatDisplaySemiBold16DeeporangeA400)
                        ])))));
  }

  onTapBtnArrowleft() {
    Get.back();
  }
}
