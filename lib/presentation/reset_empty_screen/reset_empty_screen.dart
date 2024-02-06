import 'controller/reset_empty_controller.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/core/utils/validation_functions.dart';
import 'package:buenoycerca/widgets/custom_button.dart';
import 'package:buenoycerca/widgets/custom_icon_button.dart';
import 'package:buenoycerca/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ResetEmptyScreen extends GetWidget<ResetEmptyController> {
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
                        getPadding(left: 35, top: 28, right: 35, bottom: 28),
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
                                  style:
                                      AppStyle.txtRedHatDisplayBold38Black900)),
                          Obx(() => CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.groupTwentyThreeController,
                              hintText: "lbl_password".tr,
                              margin: getMargin(top: 37),
                              padding: TextFormFieldPadding.PaddingT23_2,
                              textInputType: TextInputType.visiblePassword,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 18, top: 21, right: 20, bottom: 21),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgLock)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(66)),
                              suffix: InkWell(
                                  onTap: () {
                                    controller.isShowPassword.value =
                                        !controller.isShowPassword.value;
                                  },
                                  child: Container(
                                      margin: getMargin(
                                          left: 30,
                                          top: 21,
                                          right: 27,
                                          bottom: 21),
                                      child: CustomImageView(
                                          svgPath:
                                              controller.isShowPassword.value
                                                  ? ImageConstant.imgEye
                                                  : ImageConstant.imgEye))),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(66)),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              isObscureText: !controller.isShowPassword.value)),
                          Obx(() => CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.groupTwentyFourController,
                              hintText: "msg_confirm_password".tr,
                              margin: getMargin(top: 20),
                              padding: TextFormFieldPadding.PaddingT23_2,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 18, top: 21, right: 20, bottom: 21),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgLock)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(66)),
                              suffix: InkWell(
                                  onTap: () {
                                    controller.isShowPassword1.value =
                                        !controller.isShowPassword1.value;
                                  },
                                  child: Container(
                                      margin: getMargin(
                                          left: 30,
                                          top: 21,
                                          right: 27,
                                          bottom: 21),
                                      child: CustomImageView(
                                          svgPath:
                                              controller.isShowPassword1.value
                                                  ? ImageConstant.imgEye
                                                  : ImageConstant.imgEye))),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(66)),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              isObscureText:
                                  !controller.isShowPassword1.value)),
                          CustomButton(
                              height: getVerticalSize(66),
                              text: "lbl_reset".tr.toUpperCase(),
                              margin: getMargin(top: 32, bottom: 5))
                        ])))));
  }

  onTapBtnArrowleft() {
    Get.back();
  }
}
