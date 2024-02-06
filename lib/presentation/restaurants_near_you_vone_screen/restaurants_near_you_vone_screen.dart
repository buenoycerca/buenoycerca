import 'controller/restaurants_near_you_vone_controller.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/home_vone_page/home_vone_page.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_iconbutton.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_stack.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:buenoycerca/widgets/app_bar/custom_app_bar.dart';
import 'package:buenoycerca/widgets/custom_bottom_bar.dart';
import 'package:buenoycerca/widgets/custom_icon_button.dart';
import 'package:buenoycerca/widgets/custom_search_view.dart';

class RestaurantsNearYouVoneScreen
    extends GetWidget<RestaurantsNearYouVoneController> {
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
                    onTap: onTapArrowleft),
                centerTitle: true,
                title: AppbarSubtitle2(text: "msg_restaurants_near".tr),
                actions: [
                  AppbarStack(
                      margin: getMargin(left: 35, top: 4, right: 35, bottom: 2))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 23, right: 23),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 12, top: 45, right: 11),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomSearchView(
                                    focusNode: FocusNode(),
                                    controller:
                                        controller.componentNineteenController,
                                    hintText: "lbl_search".tr,
                                    prefix: Container(
                                        margin: getMargin(
                                            left: 23,
                                            top: 21,
                                            right: 10,
                                            bottom: 21),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgSearch)),
                                    prefixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(66))),
                                CustomIconButton(
                                    height: 66,
                                    width: 68,
                                    margin: getMargin(left: 13),
                                    variant:
                                        IconButtonVariant.FillDeeporangeA400,
                                    padding: IconButtonPadding.PaddingAll17,
                                    child: CustomImageView(
                                        svgPath:
                                            ImageConstant.imgSettingsWhiteA700))
                              ])),
                      Container(
                          height: getVerticalSize(337),
                          width: getHorizontalSize(370),
                          margin: getMargin(top: 35),
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
                                                                top: 15,
                                                                right: 19),
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
                                                            .txtRedHatDisplaySemiBold18Gray500
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
                                                        left: 6, bottom: 2),
                                                    child: Text("lbl_4_2".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRedHatDisplaySemiBold18Gray500
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.36))))
                                              ])),
                                          Padding(
                                              padding: getPadding(
                                                  left: 24,
                                                  top: 19,
                                                  bottom: 19),
                                              child: Row(children: [
                                                Container(
                                                    width:
                                                        getHorizontalSize(64),
                                                    padding: getPadding(
                                                        left: 12,
                                                        top: 3,
                                                        right: 12,
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
                                                        left: 14,
                                                        top: 3,
                                                        right: 14,
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
                                                        left: 14,
                                                        top: 3,
                                                        right: 14,
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
                          ])),
                      Container(
                          margin: getMargin(left: 12, top: 12, right: 12),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    height: getVerticalSize(170),
                                    width: getHorizontalSize(357),
                                    child: Stack(
                                        alignment: Alignment.topRight,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgUnsplasha66sgfonnqq,
                                              height: getVerticalSize(170),
                                              width: getHorizontalSize(357),
                                              radius: BorderRadius.only(
                                                  topLeft: Radius.circular(
                                                      getHorizontalSize(15)),
                                                  topRight: Radius.circular(
                                                      getHorizontalSize(15))),
                                              alignment: Alignment.center),
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Container(
                                                  height: getSize(45),
                                                  width: getSize(45),
                                                  margin: getMargin(
                                                      top: 16, right: 19),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgBookmark,
                                                            height: getSize(45),
                                                            width: getSize(45),
                                                            alignment: Alignment
                                                                .center),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgFavoriteDeepOrangeA40032x32,
                                                            height: getSize(32),
                                                            width: getSize(32),
                                                            alignment: Alignment
                                                                .center)
                                                      ])))
                                        ])),
                                Padding(
                                    padding: getPadding(left: 23, top: 22),
                                    child: Text("lbl_foodies".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtRedHatDisplayBold24)),
                                Padding(
                                    padding: getPadding(left: 23, top: 7),
                                    child: Row(children: [
                                      Padding(
                                          padding: getPadding(top: 1),
                                          child: Text("lbl_15min".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRedHatDisplayRegular18)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgStar,
                                          height: getSize(26),
                                          width: getSize(26),
                                          margin: getMargin(left: 9)),
                                      Padding(
                                          padding: getPadding(left: 7, top: 1),
                                          child: Text("lbl_5_0".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRedHatDisplayRegular18))
                                    ])),
                                Padding(
                                    padding: getPadding(
                                        left: 24, top: 17, bottom: 24),
                                    child: Row(children: [
                                      Container(
                                          width: getHorizontalSize(59),
                                          padding: getPadding(
                                              left: 14,
                                              top: 3,
                                              right: 14,
                                              bottom: 3),
                                          decoration: AppDecoration
                                              .txtFillYellow70019
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .txtRoundedBorder5),
                                          child: Text("lbl_pizza".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRedHatDisplayRegular12)),
                                      Container(
                                          width: getHorizontalSize(48),
                                          margin: getMargin(left: 11),
                                          padding: getPadding(
                                              left: 11,
                                              top: 4,
                                              right: 11,
                                              bottom: 4),
                                          decoration: AppDecoration
                                              .txtFillIndigo10066
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .txtRoundedBorder5),
                                          child: Text("lbl_fries".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRedHatDisplayRegular12IndigoA200)),
                                      Container(
                                          width: getHorizontalSize(70),
                                          margin: getMargin(left: 12),
                                          padding: getPadding(
                                              left: 13,
                                              top: 4,
                                              right: 13,
                                              bottom: 4),
                                          decoration: AppDecoration
                                              .txtFillDeeporangeA40033
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .txtRoundedBorder5),
                                          child: Text("lbl_chicken".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRedHatDisplayRegular12DeeporangeA400))
                                    ]))
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

  onTapArrowleft() {
    Get.back();
  }
}
