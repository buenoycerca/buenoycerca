import 'controller/cart_v2_remove_and_coupon_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_iconbutton.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_stack.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:buenoycerca/widgets/app_bar/custom_app_bar.dart';
import 'package:buenoycerca/widgets/custom_button.dart';

class CartV2RemoveAndCouponScreen
    extends GetWidget<CartV2RemoveAndCouponController> {
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
                    onTap: onTapArrowleft21),
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
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: Container(
                                        width: getHorizontalSize(253),
                                        padding: getPadding(
                                            left: 21,
                                            top: 15,
                                            right: 21,
                                            bottom: 15),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder15,
                                            image: DecorationImage(
                                                image: fs.Svg(
                                                    ImageConstant.imgGroup1132),
                                                fit: BoxFit.cover)),
                                        child: Row(children: [
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgTrashGray400,
                                              height: getVerticalSize(15),
                                              width: getHorizontalSize(22),
                                              margin:
                                                  getMargin(top: 4, bottom: 3)),
                                          Padding(
                                              padding:
                                                  getPadding(left: 23, top: 4),
                                              child: Text("lbl_apply_coupon".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRedHatDisplayMedium14Gray400
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.28))))
                                        ]))),
                                Container(
                                    margin: getMargin(left: 15),
                                    padding: getPadding(
                                        left: 24,
                                        top: 15,
                                        right: 24,
                                        bottom: 15),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder15,
                                        image: DecorationImage(
                                            image: fs.Svg(
                                                ImageConstant.imgGroup443),
                                            fit: BoxFit.cover)),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 4),
                                              child: Text("lbl_apply2".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRedHatDisplayMedium14WhiteA700
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.28))))
                                        ]))
                              ])),
                      Padding(
                          padding: getPadding(left: 35, top: 75, right: 36),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(right: 1),
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
                                    padding: getPadding(top: 24, right: 1),
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
                                    padding: getPadding(top: 22),
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
                              left: 35, top: 41, right: 35, bottom: 34))
                    ]))));
  }

  onTapArrowleft21() {
    Get.back();
  }
}
