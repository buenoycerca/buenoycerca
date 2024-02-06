import 'controller/search_vtwo_controller.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/home_vone_page/home_vone_page.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_iconbutton.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_stack.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:buenoycerca/widgets/app_bar/custom_app_bar.dart';
import 'package:buenoycerca/widgets/custom_bottom_bar.dart';
import 'package:buenoycerca/widgets/custom_button.dart';
import 'package:buenoycerca/widgets/custom_icon_button.dart';

class SearchVtwoScreen extends GetWidget<SearchVtwoController> {
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
                    onTap: onTapArrowleft5),
                centerTitle: true,
                title: AppbarSubtitle2(text: "lbl_search_now".tr),
                actions: [
                  AppbarStack(
                      margin: getMargin(left: 35, top: 4, right: 35, bottom: 2))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 23, top: 45, right: 23, bottom: 45),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 12, right: 11),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    color: ColorConstant.whiteA700,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder15),
                                    child: Container(
                                        height: getVerticalSize(66),
                                        width: getHorizontalSize(278),
                                        decoration: AppDecoration.fillWhiteA700
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder15),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgSearch,
                                                  height: getSize(24),
                                                  width: getSize(24),
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  margin: getMargin(left: 23)),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      padding: getPadding(
                                                          left: 23,
                                                          top: 21,
                                                          right: 23,
                                                          bottom: 21),
                                                      decoration: AppDecoration
                                                          .fillWhiteA700
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder15),
                                                      child: Row(children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgSearch,
                                                            height: getSize(24),
                                                            width: getSize(24)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 10,
                                                                top: 2,
                                                                bottom: 2),
                                                            child: Text(
                                                                "lbl_steak_house"
                                                                    .tr,
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
                                                                            getHorizontalSize(0.28))))
                                                      ])))
                                            ]))),
                                CustomIconButton(
                                    height: 66,
                                    width: 68,
                                    variant:
                                        IconButtonVariant.FillDeeporangeA400,
                                    padding: IconButtonPadding.PaddingAll17,
                                    child: CustomImageView(
                                        svgPath:
                                            ImageConstant.imgSettingsWhiteA700))
                              ])),
                      Padding(
                          padding: getPadding(left: 12, top: 24, right: 11),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomButton(
                                    height: getVerticalSize(55),
                                    width: getHorizontalSize(179),
                                    text: "lbl_food".tr,
                                    variant:
                                        ButtonVariant.OutlineBluegray10040_1,
                                    shape: ButtonShape.CustomBorderTL15,
                                    padding: ButtonPadding.PaddingAll18,
                                    fontStyle: ButtonFontStyle
                                        .RedHatDisplayMedium14DeeporangeA400),
                                CustomButton(
                                    height: getVerticalSize(55),
                                    width: getHorizontalSize(180),
                                    text: "lbl_restaurant".tr,
                                    variant: ButtonVariant.OutlineBluegray10040,
                                    shape: ButtonShape.CustomBorderTL15,
                                    padding: ButtonPadding.PaddingAll18,
                                    fontStyle:
                                        ButtonFontStyle.RedHatDisplayMedium14)
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 12, top: 36),
                              child: Text("lbl_1_result_found".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtRedHatDisplayMedium16Gray500
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.32))))),
                      Container(
                          height: getVerticalSize(337),
                          width: getHorizontalSize(370),
                          margin: getMargin(top: 29, bottom: 5),
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: getVerticalSize(325),
                                    width: getHorizontalSize(357),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.gray300Cc,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(18))))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    decoration: AppDecoration.fillWhiteA700
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder15),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: getVerticalSize(170),
                                              width: getHorizontalSize(357),
                                              child: Stack(
                                                  alignment: Alignment.topRight,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgUnsplashyhswy6uqvk,
                                                        height: getVerticalSize(
                                                            170),
                                                        width:
                                                            getHorizontalSize(
                                                                357),
                                                        radius: BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    getHorizontalSize(
                                                                        15)),
                                                            topRight:
                                                                Radius.circular(
                                                                    getHorizontalSize(
                                                                        15))),
                                                        alignment:
                                                            Alignment.center),
                                                    Align(
                                                        alignment:
                                                            Alignment.topRight,
                                                        child: Container(
                                                            height: getSize(45),
                                                            width: getSize(45),
                                                            margin: getMargin(
                                                                top: 27,
                                                                right: 18),
                                                            child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                children: [
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgBookmark,
                                                                      height:
                                                                          getSize(
                                                                              45),
                                                                      width:
                                                                          getSize(
                                                                              45),
                                                                      alignment:
                                                                          Alignment
                                                                              .center),
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgFavorite,
                                                                      height:
                                                                          getSize(
                                                                              32),
                                                                      width:
                                                                          getSize(
                                                                              32),
                                                                      alignment:
                                                                          Alignment
                                                                              .center)
                                                                ])))
                                                  ])),
                                          Padding(
                                              padding:
                                                  getPadding(left: 23, top: 16),
                                              child: Text(
                                                  "lbl_the_steak_house".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRedHatDisplayBold25Black900
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.5)))),
                                          Padding(
                                              padding:
                                                  getPadding(left: 23, top: 11),
                                              child: Row(children: [
                                                Padding(
                                                    padding:
                                                        getPadding(bottom: 2),
                                                    child: Text("lbl_15min".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRedHatDisplayMedium18Gray500
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.36)))),
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgStar,
                                                    height: getSize(26),
                                                    width: getSize(26),
                                                    margin: getMargin(left: 9)),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 7, bottom: 2),
                                                    child: Text("lbl_4_2".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRedHatDisplayMedium18Gray500
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.36))))
                                              ])),
                                          Padding(
                                              padding: getPadding(
                                                  left: 24,
                                                  top: 20,
                                                  bottom: 19),
                                              child: Row(children: [
                                                Container(
                                                    width:
                                                        getHorizontalSize(64),
                                                    padding: getPadding(
                                                        left: 13,
                                                        top: 3,
                                                        right: 13,
                                                        bottom: 3),
                                                    decoration: AppDecoration
                                                        .txtFillYellow70019
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .txtRoundedBorder5),
                                                    child: Text("lbl_steak".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRedHatDisplayMedium14Amber700
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.28)))),
                                                Container(
                                                    width:
                                                        getHorizontalSize(55),
                                                    margin: getMargin(left: 13),
                                                    padding: getPadding(
                                                        left: 13,
                                                        top: 3,
                                                        right: 13,
                                                        bottom: 3),
                                                    decoration: AppDecoration
                                                        .txtFillIndigoA20019
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .txtRoundedBorder5),
                                                    child: Text("lbl_fish".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRedHatDisplayMedium14IndigoA200
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.28)))),
                                                Container(
                                                    width:
                                                        getHorizontalSize(82),
                                                    margin: getMargin(left: 10),
                                                    padding: getPadding(
                                                        left: 13,
                                                        top: 3,
                                                        right: 13,
                                                        bottom: 3),
                                                    decoration: AppDecoration
                                                        .txtFillDeeporangeA40033
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .txtRoundedBorder5),
                                                    child: Text(
                                                        "lbl_burgers".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRedHatDisplayMedium14DeeporangeA400
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.28))))
                                              ]))
                                        ])))
                          ]))
                    ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeVonePage;
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeVonePage:
        return HomeVonePage();
      default:
        return DefaultWidget();
    }
  }

  onTapArrowleft5() {
    Get.back();
  }
}
