import 'controller/add_your_address_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/widgets/custom_button.dart';
import 'package:buenoycerca/widgets/custom_icon_button.dart';

class AddYourAddressScreen extends GetWidget<AddYourAddressController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Container(
                height: getVerticalSize(891),
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          margin: getMargin(top: 42),
                          padding: getPadding(
                              left: 35, top: 64, right: 35, bottom: 64),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: fs.Svg(ImageConstant.imgGroup434),
                                  fit: BoxFit.cover)),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Spacer(),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        height: getVerticalSize(135),
                                        width: getHorizontalSize(184),
                                        margin: getMargin(right: 33),
                                        child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Container(
                                                      padding: getPadding(
                                                          left: 26,
                                                          top: 18,
                                                          right: 26,
                                                          bottom: 18),
                                                      decoration: BoxDecoration(
                                                          image: DecorationImage(
                                                              image: fs.Svg(
                                                                  ImageConstant
                                                                      .imgLocationcard),
                                                              fit: BoxFit
                                                                  .cover)),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        bottom:
                                                                            19),
                                                                child: Text(
                                                                    "msg_horizenal_road_stree"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRedHatDisplayMedium10Black90066
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                getHorizontalSize(0.2))))
                                                          ]))),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgEyeBlack900,
                                                  height: getVerticalSize(63),
                                                  width: getHorizontalSize(55),
                                                  alignment:
                                                      Alignment.topCenter)
                                            ]))),
                                CustomButton(
                                    height: getVerticalSize(66),
                                    text:
                                        "msg_use_this_address".tr.toUpperCase(),
                                    margin: getMargin(top: 193)),
                                Padding(
                                    padding: getPadding(top: 17),
                                    child: Text(
                                        "lbl_add_manually".tr.toUpperCase(),
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRedHatDisplaySemiBold16
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.32))))
                              ]))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          width: double.maxFinite,
                          margin: getMargin(bottom: 610),
                          padding: getPadding(
                              left: 35, top: 28, right: 35, bottom: 28),
                          decoration: AppDecoration.gradientGray100Gray10000,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomIconButton(
                                    height: 50,
                                    width: 50,
                                    margin: getMargin(bottom: 174),
                                    onTap: () {
                                      onTapBtnArrowleft();
                                    },
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgArrowleft)),
                                Padding(
                                    padding: getPadding(top: 16, bottom: 184),
                                    child: Text("msg_add_your_address".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRedHatDisplaySemiBold18Black90066
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.36)))),
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: getMargin(top: 2, bottom: 172),
                                    color: ColorConstant.deepOrange50,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder15),
                                    child: Container(
                                        height: getSize(50),
                                        width: getSize(50),
                                        padding: getPadding(
                                            left: 10,
                                            top: 12,
                                            right: 10,
                                            bottom: 12),
                                        decoration: AppDecoration
                                            .fillDeeporange50
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder15),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment: Alignment.topRight,
                                                  child: Container(
                                                      height: getSize(13),
                                                      width: getSize(13),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .redA700,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      6))))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      height:
                                                          getVerticalSize(24),
                                                      width:
                                                          getHorizontalSize(21),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .topRight,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgNotification,
                                                                height:
                                                                    getVerticalSize(
                                                                        24),
                                                                width:
                                                                    getHorizontalSize(
                                                                        21),
                                                                alignment:
                                                                    Alignment
                                                                        .center),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topRight,
                                                                child: Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                1),
                                                                    child: Text(
                                                                        "lbl_1"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRedHatDisplayBold75)))
                                                          ])))
                                            ])))
                              ])))
                ]))));
  }

  onTapBtnArrowleft() {
    Get.back();
  }
}
