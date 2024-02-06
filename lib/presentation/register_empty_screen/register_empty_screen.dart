import 'controller/register_empty_controller.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/core/utils/validation_functions.dart';
import 'package:buenoycerca/widgets/custom_button.dart';
import 'package:buenoycerca/widgets/custom_icon_button.dart';
import 'package:buenoycerca/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegisterEmptyScreen extends GetWidget<RegisterEmptyController> {
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
                        getPadding(left: 34, top: 30, right: 34, bottom: 30),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomIconButton(
                              height: 50,
                              width: 50,
                              alignment: Alignment.centerLeft,
                              onTap: () {
                                onTapBtnArrowleft();
                              },
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowleft)),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  width: getHorizontalSize(215),
                                  margin: getMargin(top: 60),
                                  child: Text("msg_create_your_account".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtRedHatDisplayBold38Black900))),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.groupFiftyNineController,
                              hintText: "lbl_full_name".tr,
                              margin: getMargin(top: 37),
                              prefix: Container(
                                  margin: getMargin(
                                      left: 18, top: 21, right: 20, bottom: 21),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgUser)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(66)),
                              validator: (value) {
                                if (!isText(value)) {
                                  return "Please enter valid text";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.groupSixtyController,
                              hintText: "msg_enter_your_email".tr,
                              margin: getMargin(top: 20),
                              padding: TextFormFieldPadding.PaddingT23_1,
                              textInputType: TextInputType.emailAddress,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 18, top: 21, right: 20, bottom: 21),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgArrowdown)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(66)),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                          Obx(() => CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.groupSixtyOneController,
                              hintText: "lbl_password".tr,
                              margin: getMargin(top: 19),
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
                          CustomButton(
                              height: getVerticalSize(66),
                              text: "lbl_register".tr.toUpperCase(),
                              margin: getMargin(top: 25)),
                          Padding(
                              padding: getPadding(top: 22),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_already_have_an2".tr,
                                        style: TextStyle(
                                            color: ColorConstant.gray500,
                                            fontSize: getFontSize(16),
                                            fontFamily: 'Red Hat Display',
                                            fontWeight: FontWeight.w500,
                                            letterSpacing:
                                                getHorizontalSize(0.32))),
                                    TextSpan(
                                        text: "lbl_sign_in".tr,
                                        style: TextStyle(
                                            color: ColorConstant.deepOrangeA400,
                                            fontSize: getFontSize(16),
                                            fontFamily: 'Red Hat Display',
                                            fontWeight: FontWeight.w500,
                                            letterSpacing:
                                                getHorizontalSize(0.32)))
                                  ]),
                                  textAlign: TextAlign.left)),
                          Padding(
                              padding: getPadding(top: 40),
                              child: SizedBox(
                                  width: getHorizontalSize(238),
                                  child: Divider(
                                      color: ColorConstant.black90067))),
                          Padding(
                              padding: getPadding(top: 36),
                              child: Text("msg_continue_with_accounts".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtRedHatDisplayMedium16Gray500
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.32)))),
                          Padding(
                              padding: getPadding(top: 25, bottom: 5),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: CustomButton(
                                            height: getVerticalSize(57),
                                            text: "lbl_google".tr.toUpperCase(),
                                            margin: getMargin(right: 7),
                                            variant: ButtonVariant.White,
                                            padding: ButtonPadding.PaddingAll18,
                                            fontStyle: ButtonFontStyle
                                                .RedHatDisplaySemiBold14)),
                                    Expanded(
                                        child: CustomButton(
                                            height: getVerticalSize(57),
                                            text:
                                                "lbl_facebook".tr.toUpperCase(),
                                            margin: getMargin(left: 7),
                                            variant:
                                                ButtonVariant.FillIndigo500,
                                            padding: ButtonPadding.PaddingAll18,
                                            fontStyle: ButtonFontStyle
                                                .RedHatDisplaySemiBold14Gray100))
                                  ]))
                        ])))));
  }

  onTapBtnArrowleft() {
    Get.back();
  }
}
