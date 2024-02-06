import 'controller/food_details_v3_favourite_controller.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_image_1.dart';
import 'package:buenoycerca/widgets/app_bar/custom_app_bar.dart';
import 'package:buenoycerca/widgets/custom_button.dart';

class FoodDetailsV3FavouriteScreen
    extends GetWidget<FoodDetailsV3FavouriteController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 63,
                leading: AppbarImage1(
                    height: getSize(32),
                    width: getSize(32),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 31, top: 12, bottom: 12),
                    onTap: onTapArrowleft16),
                actions: [
                  AppbarImage1(
                      height: getSize(32),
                      width: getSize(32),
                      svgPath: ImageConstant.imgFavorite,
                      margin:
                          getMargin(left: 33, top: 12, right: 33, bottom: 12))
                ]),
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: getHorizontalSize(85),
                          padding: getPadding(
                              left: 13, top: 2, right: 13, bottom: 2),
                          decoration: AppDecoration.txtFillYellow70019.copyWith(
                              borderRadius:
                                  BorderRadiusStyle.txtRoundedBorder5),
                          child: Text("lbl_healthy".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRedHatDisplayMedium1587)),
                      Padding(
                          padding: getPadding(top: 1),
                          child: Text("lbl_cream_chicken".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRedHatDisplayBold32)),
                      Padding(
                          padding: getPadding(top: 3),
                          child: Text("msg_best_chicken_ever".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRedHatDisplayMedium16Gray500
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.32)))),
                      CustomImageView(
                          imagePath: ImageConstant.imgImage1,
                          height: getVerticalSize(282),
                          width: getHorizontalSize(277),
                          margin: getMargin(top: 25)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 88, top: 10),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "lbl_12".tr,
                                        style: TextStyle(
                                            color: ColorConstant.black900,
                                            fontSize: getFontSize(34),
                                            fontFamily: 'Red Hat Display',
                                            fontWeight: FontWeight.w700,
                                            letterSpacing:
                                                getHorizontalSize(0.68))),
                                    TextSpan(
                                        text: "lbl".tr,
                                        style: TextStyle(
                                            color: ColorConstant.black900,
                                            fontSize:
                                                getFontSize(25.847970962524414),
                                            fontFamily: 'Red Hat Display',
                                            fontWeight: FontWeight.w700,
                                            letterSpacing:
                                                getHorizontalSize(0.52))),
                                    TextSpan(
                                        text: "lbl_99".tr,
                                        style: TextStyle(
                                            color: ColorConstant.gray500,
                                            fontSize: getFontSize(24),
                                            fontFamily: 'Red Hat Display',
                                            fontWeight: FontWeight.w700,
                                            letterSpacing:
                                                getHorizontalSize(0.48)))
                                  ]),
                                  textAlign: TextAlign.left))),
                      Padding(
                          padding: getPadding(top: 15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: getSize(56),
                                    padding: getPadding(
                                        left: 20,
                                        top: 12,
                                        right: 20,
                                        bottom: 12),
                                    decoration: AppDecoration.txtFillGray40075
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder12),
                                    child: Text("lbl_s".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRedHatDisplayMedium2241)),
                                Container(
                                    width: getSize(56),
                                    margin: getMargin(left: 16),
                                    padding: getPadding(
                                        left: 17,
                                        top: 12,
                                        right: 17,
                                        bottom: 12),
                                    decoration: AppDecoration
                                        .txtFillDeeporangeA400
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder12),
                                    child: Text("lbl_m".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRedHatDisplayMedium2241WhiteA700)),
                                Container(
                                    width: getSize(56),
                                    margin: getMargin(left: 16),
                                    padding: getPadding(
                                        left: 20,
                                        top: 12,
                                        right: 20,
                                        bottom: 12),
                                    decoration: AppDecoration.txtFillGray40075
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder12),
                                    child: Text("lbl_l".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRedHatDisplayMedium2241))
                              ])),
                      Padding(
                          padding: getPadding(top: 39),
                          child: Text("lbl_ingredients".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRedHatDisplayMedium18Black900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.36)))),
                      Padding(
                          padding: getPadding(top: 15, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    color: ColorConstant.gray40075,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder11),
                                    child: Container(
                                        height: getVerticalSize(56),
                                        width: getHorizontalSize(59),
                                        padding: getPadding(
                                            left: 10,
                                            top: 15,
                                            right: 10,
                                            bottom: 15),
                                        decoration: AppDecoration.fillGray40075
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder11),
                                        child: Stack(children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgFreshonionpngpic,
                                              height: getVerticalSize(25),
                                              width: getHorizontalSize(39),
                                              alignment: Alignment.topCenter)
                                        ]))),
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: getMargin(left: 10),
                                    color: ColorConstant.gray40075,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder11),
                                    child: Container(
                                        height: getVerticalSize(56),
                                        width: getHorizontalSize(59),
                                        padding: getPadding(
                                            left: 10,
                                            top: 13,
                                            right: 10,
                                            bottom: 13),
                                        decoration: AppDecoration.fillGray40075
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder11),
                                        child: Stack(children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgSeekpng1,
                                              height: getVerticalSize(29),
                                              width: getHorizontalSize(39),
                                              alignment: Alignment.center)
                                        ]))),
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: getMargin(left: 10),
                                    color: ColorConstant.gray40075,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder11),
                                    child: Container(
                                        height: getVerticalSize(56),
                                        width: getHorizontalSize(59),
                                        padding: getPadding(
                                            left: 12,
                                            top: 15,
                                            right: 12,
                                            bottom: 15),
                                        decoration: AppDecoration.fillGray40075
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder11),
                                        child: Stack(children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage7,
                                              height: getVerticalSize(26),
                                              width: getHorizontalSize(35),
                                              alignment: Alignment.center)
                                        ]))),
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: getMargin(left: 10),
                                    color: ColorConstant.gray40075,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder11),
                                    child: Container(
                                        height: getVerticalSize(56),
                                        width: getHorizontalSize(59),
                                        padding: getPadding(
                                            left: 7,
                                            top: 11,
                                            right: 7,
                                            bottom: 11),
                                        decoration: AppDecoration.fillGray40075
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder11),
                                        child: Stack(children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage8,
                                              height: getVerticalSize(33),
                                              width: getHorizontalSize(44),
                                              alignment: Alignment.center)
                                        ])))
                              ]))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(66),
                text: "lbl_add_to_cart".tr.toUpperCase(),
                margin: getMargin(left: 64, right: 64, bottom: 43))));
  }

  onTapArrowleft16() {
    Get.back();
  }
}
