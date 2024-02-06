import 'controller/check_out_vone_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_iconbutton.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_stack.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:buenoycerca/widgets/app_bar/custom_app_bar.dart';
import 'package:buenoycerca/widgets/custom_button.dart';

class CheckOutVoneScreen extends GetWidget<CheckOutVoneController> {
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
                    onTap: onTapArrowleft26),
                centerTitle: true,
                title: AppbarSubtitle2(text: "lbl_check_out".tr),
                actions: [
                  AppbarStack(
                      margin: getMargin(left: 35, top: 4, right: 35, bottom: 2))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(all: 35),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(left: 1),
                              decoration: AppDecoration
                                  .gradientDeeppurpleA200IndigoA700
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder35),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
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
                                                    image: fs.Svg(ImageConstant
                                                        .imgGroup525),
                                                    fit: BoxFit.cover)),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 5),
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
                                                                        top: 4),
                                                                child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                          "lbl_current_balance"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtCeraProMedium1587),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  6),
                                                                          child: Text(
                                                                              "lbl_5_750_20".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtCeraProMedium3173))
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
                                                                margin:
                                                                    getMargin(
                                                                        bottom:
                                                                            30))
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 65),
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
                                                            Text("lbl_09_25".tr,
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
                      Spacer(),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                width: getHorizontalSize(253),
                                padding: getPadding(
                                    left: 21, top: 16, right: 21, bottom: 16),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder15,
                                    image: DecorationImage(
                                        image:
                                            fs.Svg(ImageConstant.imgGroup1132),
                                        fit: BoxFit.cover)),
                                child: Row(children: [
                                  CustomImageView(
                                      svgPath: ImageConstant.imgTrashGray400,
                                      height: getVerticalSize(15),
                                      width: getHorizontalSize(22),
                                      margin: getMargin(top: 3, bottom: 2)),
                                  Padding(
                                      padding: getPadding(left: 23, top: 2),
                                      child: Text("lbl_apply_coupon".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRedHatDisplayMedium14Gray400
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(0.28))))
                                ])),
                            Container(
                                padding: getPadding(
                                    left: 24, top: 16, right: 24, bottom: 16),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder15,
                                    image: DecorationImage(
                                        image:
                                            fs.Svg(ImageConstant.imgGroup443),
                                        fit: BoxFit.cover)),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding: getPadding(top: 2),
                                          child: Text("lbl_apply2".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRedHatDisplayMedium14WhiteA700
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.28))))
                                    ]))
                          ]),
                      Padding(
                          padding: getPadding(top: 75),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(right: 2),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("lbl_subtotal".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRedHatDisplayMedium16Gray50099
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.32))),
                                          Text("lbl_58_96".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRedHatDisplayMedium16Gray50099
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.32)))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 10),
                                    child:
                                        Divider(color: ColorConstant.gray400)),
                                Padding(
                                    padding: getPadding(top: 23, right: 2),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("lbl_delivery".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRedHatDisplayMedium16Gray50099
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.32)))),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("lbl_3_59".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRedHatDisplayMedium16Gray50099
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.32))))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 9),
                                    child:
                                        Divider(color: ColorConstant.gray400)),
                                Padding(
                                    padding: getPadding(top: 23, right: 1),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("lbl_total".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRedHatDisplayMedium18Black900
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.36))),
                                          Text("lbl_62_55".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRedHatDisplayMedium18Black900
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.36)))
                                        ]))
                              ])),
                      CustomButton(
                          height: getVerticalSize(66),
                          text: "lbl_check_out2".tr.toUpperCase(),
                          margin: getMargin(top: 38, bottom: 51))
                    ]))));
  }

  onTapArrowleft26() {
    Get.back();
  }
}
