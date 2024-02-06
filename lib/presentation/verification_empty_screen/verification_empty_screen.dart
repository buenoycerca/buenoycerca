import 'controller/verification_empty_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/widgets/custom_button.dart';
import 'package:buenoycerca/widgets/custom_icon_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationEmptyScreen extends GetWidget<VerificationEmptyController> {
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
                                    Text("msg_verify_phone_number".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRedHatDisplayBold22),
                                    Padding(
                                        padding: getPadding(top: 7),
                                        child: Text("msg_we_have_sent_code".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRedHatDisplayMedium14
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.28)))),
                                    Padding(
                                        padding: getPadding(top: 41),
                                        child: Text("lbl_0000_0000_0000".tr,
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
                                            left: 4, top: 33, right: 4),
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
                                                activeFillColor:
                                                    ColorConstant.fromHex(
                                                        "#1212121D"),
                                                inactiveFillColor:
                                                    ColorConstant.fromHex(
                                                        "#1212121D"),
                                                inactiveColor:
                                                    ColorConstant.gray500,
                                                selectedColor:
                                                    ColorConstant.gray500,
                                                activeColor:
                                                    ColorConstant.gray500)))),
                                    CustomButton(
                                        height: getVerticalSize(66),
                                        text: "lbl_verify2".tr.toUpperCase(),
                                        margin: getMargin(top: 45)),
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
