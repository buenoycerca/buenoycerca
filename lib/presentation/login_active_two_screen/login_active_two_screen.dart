import 'controller/login_active_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/widgets/custom_button.dart';
import 'package:buenoycerca/widgets/custom_icon_button.dart';

class LoginActiveTwoScreen extends GetWidget<LoginActiveTwoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 34, top: 28, right: 34, bottom: 28),
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
                              width: getHorizontalSize(194),
                              margin: getMargin(top: 59),
                              child: Text("msg_login_your_account".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtRedHatDisplayBold38Black900))),
                      Container(
                          margin: getMargin(top: 37),
                          padding: getPadding(
                              left: 18, top: 21, right: 18, bottom: 21),
                          decoration: AppDecoration.outlineDeeporangeA400
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder15),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowdown,
                                height: getSize(24),
                                width: getSize(24)),
                            Padding(
                                padding:
                                    getPadding(left: 20, top: 3, bottom: 1),
                                child: Text(
                                    "msg_charlie_greer899_buenoycerca_com".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRedHatDisplayMedium14DeeporangeA400
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.28))))
                          ])),
                      Container(
                          margin: getMargin(top: 20),
                          padding: getPadding(
                              left: 18, top: 21, right: 18, bottom: 21),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgLock,
                                height: getSize(24),
                                width: getSize(24)),
                            CustomImageView(
                                svgPath: ImageConstant.imgDots,
                                height: getVerticalSize(9),
                                width: getHorizontalSize(117),
                                margin: getMargin(left: 20, top: 8, bottom: 7)),
                            Spacer(),
                            CustomImageView(
                                svgPath: ImageConstant.imgEye,
                                height: getSize(24),
                                width: getSize(24),
                                margin: getMargin(right: 9))
                          ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(top: 18),
                              child: Text("msg_forget_password".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRedHatDisplayMedium14
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.28))))),
                      CustomButton(
                          height: getVerticalSize(66),
                          text: "lbl_login".tr.toUpperCase(),
                          margin: getMargin(top: 21)),
                      Padding(
                          padding: getPadding(top: 23),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_create_new_account2".tr,
                                    style: TextStyle(
                                        color: ColorConstant.gray500,
                                        fontSize: getFontSize(16),
                                        fontFamily: 'Red Hat Display',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing:
                                            getHorizontalSize(0.32))),
                                TextSpan(
                                    text: "lbl_sign_up".tr,
                                    style: TextStyle(
                                        color: ColorConstant.deepOrangeA400,
                                        fontSize: getFontSize(16),
                                        fontFamily: 'Red Hat Display',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: getHorizontalSize(0.32)))
                              ]),
                              textAlign: TextAlign.left)),
                      Padding(
                          padding: getPadding(top: 37),
                          child: SizedBox(
                              width: getHorizontalSize(238),
                              child: Divider(color: ColorConstant.black90067))),
                      Padding(
                          padding: getPadding(top: 38),
                          child: Text("msg_continue_with_accounts".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRedHatDisplayMedium16Gray500
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.32)))),
                      Padding(
                          padding: getPadding(top: 27, bottom: 5),
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
                                        text: "lbl_facebook".tr.toUpperCase(),
                                        margin: getMargin(left: 7),
                                        variant: ButtonVariant.FillIndigo500,
                                        padding: ButtonPadding.PaddingAll18,
                                        fontStyle: ButtonFontStyle
                                            .RedHatDisplaySemiBold14Gray100))
                              ]))
                    ]))));
  }

  onTapBtnArrowleft() {
    Get.back();
  }
}
