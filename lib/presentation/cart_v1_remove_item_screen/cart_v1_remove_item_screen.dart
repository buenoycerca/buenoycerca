import 'controller/cart_v1_remove_item_controller.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_iconbutton.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_stack.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:buenoycerca/widgets/app_bar/custom_app_bar.dart';
import 'package:buenoycerca/widgets/custom_button.dart';

class CartV1RemoveItemScreen extends GetWidget<CartV1RemoveItemController> {
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
                    onTap: onTapArrowleft18),
                centerTitle: true,
                title: AppbarSubtitle2(text: "lbl_your_cart".tr),
                actions: [
                  AppbarStack(
                      margin: getMargin(left: 35, top: 4, right: 35, bottom: 2))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 37, bottom: 37),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          margin: getMargin(left: 35, right: 34),
                          padding: getPadding(
                              left: 16, top: 12, right: 16, bottom: 12),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgFoodimage,
                                    height: getSize(82),
                                    width: getSize(82),
                                    margin: getMargin(top: 2, bottom: 1)),
                                Padding(
                                    padding: getPadding(
                                        left: 16, top: 16, bottom: 17),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_cream_chicken".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRedHatDisplayBold18),
                                          Padding(
                                              padding: getPadding(top: 4),
                                              child: Text("lbl_12_99".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRedHatDisplayMedium16Gray500
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.32))))
                                        ])),
                                Spacer(),
                                Container(
                                    height: getVerticalSize(84),
                                    width: getHorizontalSize(24),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgInfo,
                                              height: getVerticalSize(84),
                                              width: getHorizontalSize(24),
                                              alignment: Alignment.center),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Text("lbl_03".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRedHatDisplayMedium14Black900
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.28))))
                                        ]))
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              margin: getMargin(top: 20, right: 35),
                              decoration: AppDecoration.red.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder15),
                              child: Row(children: [
                                Expanded(
                                    child: Container(
                                        padding:
                                            getPadding(top: 12, bottom: 12),
                                        decoration: AppDecoration.fillWhiteA700
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder15),
                                        child: Row(children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .img139180foodpla82x34,
                                              height: getVerticalSize(82),
                                              width: getHorizontalSize(34),
                                              margin:
                                                  getMargin(top: 2, bottom: 1)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 16,
                                                  top: 16,
                                                  bottom: 17),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("lbl_fried_fish".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRedHatDisplayBold18),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 4),
                                                        child: Text(
                                                            "lbl_19_99".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRedHatDisplayMedium16Gray500
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.32))))
                                                  ])),
                                          Container(
                                              height: getVerticalSize(84),
                                              width: getHorizontalSize(24),
                                              margin: getMargin(left: 119),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgInfo,
                                                        height:
                                                            getVerticalSize(84),
                                                        width:
                                                            getHorizontalSize(
                                                                24),
                                                        alignment:
                                                            Alignment.center),
                                                    Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                left: 5),
                                                            child: Text(
                                                                "lbl_01".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRedHatDisplayMedium14Black900
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.28)))))
                                                  ]))
                                        ]))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgCurvedtrash2,
                                    height: getSize(44),
                                    width: getSize(44),
                                    margin: getMargin(
                                        left: 24, top: 33, bottom: 32))
                              ]))),
                      Spacer(),
                      Padding(
                          padding: getPadding(left: 35, right: 35),
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
                          text: "lbl_review_payment".tr.toUpperCase(),
                          margin: getMargin(
                              left: 35, top: 53, right: 35, bottom: 34))
                    ]))));
  }

  onTapArrowleft18() {
    Get.back();
  }
}
