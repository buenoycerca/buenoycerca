import 'controller/verify_active_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/widgets/custom_button.dart';
import 'package:buenoycerca/widgets/custom_icon_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyActiveScreen extends GetWidget<VerifyActiveController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
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
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(top: 49, bottom: 5),
                              padding: getPadding(
                                  left: 28, top: 41, right: 28, bottom: 41),
                              decoration: AppDecoration.outlineGray9000c
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder25),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("lbl_verify_email".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRedHatDisplayBold22),
                                    Padding(
                                        padding: getPadding(top: 7),
                                        child: Text("msg_we_have_sent_code2".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRedHatDisplayMedium14
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.28)))),
                                    Padding(
                                        padding: getPadding(top: 42),
                                        child: Text("msg_charlie_buenoycerca_com".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRedHatDisplayMedium14
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.28)))),
                                    Padding(
                                        padding: getPadding(
                                            left: 4, top: 32, right: 4),
                                        child: Obx(() => PinCodeTextField(
                                            appContext: context,
                                            controller:
                                                controller.otpController.value,
                                            length: 4,
                                            obscureText: false,
                                            obscuringCharacter: '*',
                                            keyboardType: TextInputType.number,
                                            autoDismissKeyboard: true,
                                            enableActiveFill: true,
                                            inputFormatters: [
                                              FilteringTextInputFormatter
                                                  .digitsOnly
                                            ],
                                            onChanged: (value) {},
                                            textStyle: TextStyle(
                                                color: ColorConstant
                                                    .deepOrangeA400,
                                                fontSize: getFontSize(36),
                                                fontFamily: 'Red Hat Display',
                                                fontWeight: FontWeight.w600),
                                            pinTheme: PinTheme(
                                                fieldHeight:
                                                    getHorizontalSize(60),
                                                fieldWidth:
                                                    getHorizontalSize(60),
                                                shape: PinCodeFieldShape.box,
                                                borderRadius: BorderRadius.circular(
                                                    getHorizontalSize(15)),
                                                selectedFillColor:
                                                    ColorConstant.fromHex(
                                                        "#1212121D"),
                                                activeFillColor: ColorConstant.fromHex(
                                                    "#1212121D"),
                                                inactiveFillColor:
                                                    ColorConstant.fromHex(
                                                        "#1212121D"),
                                                inactiveColor:
                                                    ColorConstant.deepOrangeA400,
                                                selectedColor: ColorConstant.deepOrangeA400,
                                                activeColor: ColorConstant.deepOrangeA400)))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                getPadding(left: 4, top: 9),
                                            child: Text("lbl_03_15".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRedHatDisplayMedium14
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.28))))),
                                    CustomButton(
                                        height: getVerticalSize(66),
                                        text: "lbl_verify2".tr.toUpperCase(),
                                        margin: getMargin(top: 17)),
                                    CustomButton(
                                        height: getVerticalSize(66),
                                        text: "lbl_send_again".tr.toUpperCase(),
                                        margin: getMargin(top: 12, bottom: 20),
                                        variant: ButtonVariant.FillDeeporange50,
                                        fontStyle: ButtonFontStyle
                                            .RedHatDisplaySemiBold16DeeporangeA400)
                                  ])))
                    ]))));
  }

  onTapBtnArrowleft() {
    Get.back();
  }
}
