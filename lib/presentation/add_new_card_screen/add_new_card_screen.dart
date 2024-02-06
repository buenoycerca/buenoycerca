import 'controller/add_new_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/core/utils/validation_functions.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_iconbutton.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_stack.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:buenoycerca/widgets/app_bar/custom_app_bar.dart';
import 'package:buenoycerca/widgets/custom_button.dart';
import 'package:buenoycerca/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AddNewCardScreen extends GetWidget<AddNewCardController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                height: getVerticalSize(82),
                leadingWidth: 85,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 35, top: 2, bottom: 4),
                    onTap: onTapArrowleft25),
                centerTitle: true,
                title: AppbarSubtitle2(text: "lbl_add_new_card".tr),
                actions: [
                  AppbarStack(
                      margin: getMargin(left: 35, top: 4, right: 35, bottom: 2))
                ]),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 34, top: 35, right: 34, bottom: 35),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              width: double.maxFinite,
                              child: Container(
                                  margin: getMargin(left: 2),
                                  decoration: AppDecoration
                                      .gradientDeeppurpleA200IndigoA700
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder35),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            width: double.maxFinite,
                                            child: Container(
                                                padding: getPadding(
                                                    left: 34,
                                                    top: 23,
                                                    right: 34,
                                                    bottom: 23),
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: fs.Svg(
                                                            ImageConstant
                                                                .imgGroup525),
                                                        fit: BoxFit.cover)),
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 5),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                4),
                                                                    child: Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .start,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                              "lbl_current_balance".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtCeraProMedium1587),
                                                                          Padding(
                                                                              padding: getPadding(top: 6),
                                                                              child: Text("lbl_5_750_20".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtCeraProMedium3173))
                                                                        ])),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgVolumeYellow80040x51,
                                                                    height:
                                                                        getVerticalSize(
                                                                            40),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            51),
                                                                    margin: getMargin(
                                                                        bottom:
                                                                            30))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 65),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                    "msg_5282_3456_7890_1289"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtCeraProMedium1587WhiteA700ab
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                getHorizontalSize(0.57))),
                                                                Text(
                                                                    "lbl_09_25"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtCeraProMedium1587WhiteA700
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                getHorizontalSize(0.57)))
                                                              ]))
                                                    ])))
                                      ]))),
                          Padding(
                              padding: getPadding(top: 45),
                              child: Text("msg_enter_information".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRedHatDisplayBold25Black900
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.5)))),
                          Padding(
                              padding: getPadding(top: 25),
                              child: Text("lbl_card_number".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtRedHatDisplayMedium14Black900
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.28)))),
                          Container(
                              margin: getMargin(left: 2, top: 8, right: 1),
                              padding: getPadding(
                                  left: 19, top: 13, right: 19, bottom: 13),
                              decoration: AppDecoration.fillWhiteA700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder11),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgCircles,
                                    height: getVerticalSize(6),
                                    width: getHorizontalSize(177),
                                    margin: getMargin(top: 12, bottom: 11)),
                                Padding(
                                    padding:
                                        getPadding(left: 12, top: 4, bottom: 6),
                                    child: Text("lbl_9979".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRedHatDisplayMedium14Gray400
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.28)))),
                                Spacer(),
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage6,
                                    height: getSize(29),
                                    width: getSize(29),
                                    margin: getMargin(top: 1, right: 6))
                              ])),
                          Padding(
                              padding: getPadding(left: 1, top: 24),
                              child: Text("lbl_card_holder".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtRedHatDisplayMedium14Black900
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.28)))),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.group521Controller,
                              hintText: "msg_enter_card_holder".tr,
                              margin: getMargin(left: 1, top: 8),
                              shape: TextFormFieldShape.RoundedBorder10,
                              padding: TextFormFieldPadding.PaddingT17,
                              textInputAction: TextInputAction.done,
                              validator: (value) {
                                if (!isText(value)) {
                                  return "Please enter valid text";
                                }
                                return null;
                              }),
                          Padding(
                              padding: getPadding(left: 1, top: 23, right: 73),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 2),
                                        child: Text("lbl_expiration_date".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRedHatDisplayMedium14Black900
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.28)))),
                                    Padding(
                                        padding: getPadding(bottom: 2),
                                        child: Text("lbl_cvc".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRedHatDisplayMedium14Black900))
                                  ])),
                          Padding(
                              padding: getPadding(left: 2, top: 8),
                              child: Row(children: [
                                Container(
                                    width: getHorizontalSize(103),
                                    padding: getPadding(
                                        left: 16,
                                        top: 10,
                                        right: 16,
                                        bottom: 10),
                                    decoration: AppDecoration.fillWhiteA700
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder11),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              margin: getMargin(bottom: 3),
                                              decoration: AppDecoration
                                                  .txtOutlineGray9000c01,
                                              child: Text("lbl_02".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRedHatDisplayMedium14Gray4001
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.28)))),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgMaskgroup,
                                              height: getSize(12),
                                              width: getSize(12),
                                              margin: getMargin(
                                                  left: 46, top: 4, bottom: 4))
                                        ])),
                                Container(
                                    width: getHorizontalSize(103),
                                    margin: getMargin(left: 14),
                                    padding: getPadding(
                                        left: 16,
                                        top: 10,
                                        right: 16,
                                        bottom: 10),
                                    decoration: AppDecoration.fillWhiteA700
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder11),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              margin: getMargin(bottom: 3),
                                              decoration: AppDecoration
                                                  .txtOutlineGray9000c01,
                                              child: Text("lbl_02".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRedHatDisplayMedium14Gray4001
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.28)))),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgMaskgroup,
                                              height: getSize(12),
                                              width: getSize(12),
                                              margin: getMargin(
                                                  left: 46, top: 4, bottom: 4))
                                        ])),
                                Container(
                                    width: getHorizontalSize(103),
                                    margin: getMargin(left: 34),
                                    padding: getPadding(
                                        left: 18,
                                        top: 10,
                                        right: 18,
                                        bottom: 10),
                                    decoration: AppDecoration.fillWhiteA700
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder11),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              margin: getMargin(bottom: 3),
                                              decoration: AppDecoration
                                                  .txtOutlineGray9000c01,
                                              child: Text("lbl_02".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRedHatDisplayMedium14Gray4001
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.28)))),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgMaskgroup12x12,
                                              height: getSize(12),
                                              width: getSize(12),
                                              margin: getMargin(
                                                  left: 44, top: 4, bottom: 4))
                                        ]))
                              ])),
                          CustomButton(
                              height: getVerticalSize(66),
                              text: "lbl_add_card".tr.toUpperCase(),
                              margin: getMargin(left: 1, top: 49, bottom: 5))
                        ])))));
  }

  onTapArrowleft25() {
    Get.back();
  }
}
