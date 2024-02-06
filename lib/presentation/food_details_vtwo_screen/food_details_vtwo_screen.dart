import 'controller/food_details_vtwo_controller.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_image_1.dart';
import 'package:buenoycerca/widgets/app_bar/custom_app_bar.dart';
import 'package:buenoycerca/widgets/custom_button.dart';

class FoodDetailsVtwoScreen extends GetWidget<FoodDetailsVtwoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                height: getVerticalSize(81),
                leadingWidth: 63,
                leading: AppbarImage1(
                    height: getSize(32),
                    width: getSize(32),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 31, top: 12, bottom: 12),
                    onTap: onTapArrowleft13),
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
                padding: getPadding(left: 34, right: 34),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                          height: getVerticalSize(30),
                          width: getHorizontalSize(85),
                          text: "lbl_healthy".tr,
                          variant: ButtonVariant.FillYellow70019,
                          shape: ButtonShape.RoundedBorder5,
                          padding: ButtonPadding.PaddingAll3,
                          fontStyle:
                              ButtonFontStyle.RedHatDisplayMedium14Amber700),
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
                          margin: getMargin(top: 26)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 1, top: 28),
                              child: Text("lbl_description".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRedHatDisplaySemiBold18
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.36))))),
                      Container(
                          width: getHorizontalSize(352),
                          margin: getMargin(left: 1, top: 9, right: 6),
                          child: Text("msg_the_name_says_it".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRedHatDisplayRegular15
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.3)))),
                      Padding(
                          padding: getPadding(left: 1, top: 28),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    margin: getMargin(top: 1, bottom: 2),
                                    decoration: AppDecoration.outlineGray300cc
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder11),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin: EdgeInsets.all(0),
                                              shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                      color: ColorConstant
                                                          .gray300Cc,
                                                      width:
                                                          getHorizontalSize(1)),
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .customBorderTL10),
                                              child: Container(
                                                  height: getVerticalSize(45),
                                                  width: getHorizontalSize(48),
                                                  padding: getPadding(
                                                      left: 13,
                                                      top: 11,
                                                      right: 13,
                                                      bottom: 11),
                                                  decoration: AppDecoration
                                                      .outlineGray300cc
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .customBorderTL10),
                                                  child: Stack(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgMenu,
                                                        height: getSize(22),
                                                        width: getSize(22),
                                                        alignment:
                                                            Alignment.center)
                                                  ]))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 36, top: 8, bottom: 6),
                                              child: Text("lbl_1".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRedHatDisplayMedium22)),
                                          Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin: getMargin(left: 37),
                                              shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                      color: ColorConstant
                                                          .gray300Cc,
                                                      width:
                                                          getHorizontalSize(1)),
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .customBorderTL10),
                                              child: Container(
                                                  height: getVerticalSize(45),
                                                  width: getHorizontalSize(48),
                                                  padding: getPadding(
                                                      left: 17,
                                                      top: 16,
                                                      right: 17,
                                                      bottom: 16),
                                                  decoration: AppDecoration
                                                      .outlineGray300cc
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .customBorderTL10),
                                                  child: Stack(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgPlus,
                                                        height: getSize(13),
                                                        width: getSize(13),
                                                        alignment: Alignment
                                                            .centerLeft)
                                                  ])))
                                        ])),
                                RichText(
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
                                              fontSize: getFontSize(
                                                  25.847970962524414),
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
                                    textAlign: TextAlign.left)
                              ])),
                      CustomButton(
                          height: getVerticalSize(66),
                          text: "lbl_add_to_cart".tr.toUpperCase(),
                          margin: getMargin(top: 30, bottom: 5))
                    ]))));
  }

  onTapArrowleft13() {
    Get.back();
  }
}
