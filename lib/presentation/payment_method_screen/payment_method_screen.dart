import 'controller/payment_method_controller.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_iconbutton.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_stack.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:buenoycerca/widgets/app_bar/custom_app_bar.dart';
import 'package:buenoycerca/widgets/custom_button.dart';
import 'package:buenoycerca/widgets/custom_radio_button.dart';

class PaymentMethodScreen extends GetWidget<PaymentMethodController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                height: getVerticalSize(82),
                leadingWidth: 85,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 35, top: 2, bottom: 4),
                    onTap: onTapArrowleft22),
                centerTitle: true,
                title: AppbarSubtitle2(text: "lbl_payment_method".tr),
                actions: [
                  AppbarStack(
                      margin: getMargin(left: 35, top: 4, right: 35, bottom: 2))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(all: 35),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("lbl_payment_via".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRedHatDisplayBold25Black900
                              .copyWith(letterSpacing: getHorizontalSize(0.5))),
                      Container(
                          margin: getMargin(top: 26),
                          padding: getPadding(top: 24, bottom: 24),
                          decoration: AppDecoration.outlineBluegray9000c
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgVolumeYellow800,
                                    height: getVerticalSize(23),
                                    width: getHorizontalSize(38),
                                    margin: getMargin(top: 1, bottom: 1)),
                                CustomRadioButton(
                                    width: getHorizontalSize(242),
                                    text: "lbl_credit_card".tr,
                                    iconSize: getHorizontalSize(25),
                                    value: "lbl_credit_card".tr,
                                    groupValue: controller.radioGroup.value,
                                    fontStyle:
                                        RadioFontStyle.RedHatDisplayMedium18,
                                    isRightCheck: true,
                                    onChange: (value) {
                                      controller.radioGroup.value = value;
                                    })
                              ])),
                      Container(
                          margin: getMargin(top: 25),
                          padding: getPadding(top: 22, bottom: 22),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgMegaphoneIndigo700,
                                    height: getVerticalSize(28),
                                    width: getHorizontalSize(24)),
                                Padding(
                                    padding: getPadding(top: 2, bottom: 1),
                                    child: CustomRadioButton(
                                        width: getHorizontalSize(242),
                                        text: "lbl_paypal".tr,
                                        value: "lbl_paypal".tr,
                                        groupValue:
                                            controller.radioGroup1.value,
                                        margin: getMargin(top: 2, bottom: 1),
                                        fontStyle: RadioFontStyle
                                            .RedHatDisplayMedium18,
                                        isRightCheck: true,
                                        onChange: (value) {
                                          controller.radioGroup1.value = value;
                                        }))
                              ])),
                      Container(
                          margin: getMargin(top: 25),
                          padding: getPadding(top: 23, bottom: 23),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgGoogle,
                                    height: getSize(27),
                                    width: getSize(27),
                                    onTap: () {
                                      onTapImgGoogle();
                                    }),
                                Padding(
                                    padding: getPadding(top: 2),
                                    child: CustomRadioButton(
                                        width: getHorizontalSize(242),
                                        text: "lbl_google_pay".tr,
                                        value: "lbl_google_pay".tr,
                                        groupValue:
                                            controller.radioGroup2.value,
                                        margin: getMargin(top: 2),
                                        fontStyle: RadioFontStyle
                                            .RedHatDisplayMedium18,
                                        isRightCheck: true,
                                        onChange: (value) {
                                          controller.radioGroup2.value = value;
                                        }))
                              ])),
                      Spacer(),
                      CustomButton(
                          height: getVerticalSize(66),
                          text: "lbl_payment_method2".tr.toUpperCase(),
                          margin: getMargin(bottom: 63))
                    ]))));
  }

  onTapImgGoogle() async {
    var url = 'https://accounts.google.com/';
    if (!await launch(url)) {
      throw 'Could not launch https://accounts.google.com/';
    }
  }

  onTapArrowleft22() {
    Get.back();
  }
}
