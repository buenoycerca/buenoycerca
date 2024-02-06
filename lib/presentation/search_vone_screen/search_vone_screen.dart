import 'controller/search_vone_controller.dart';
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
import 'package:buenoycerca/widgets/custom_search_view.dart';

class SearchVoneScreen extends GetWidget<SearchVoneController> {
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
                    onTap: onTapArrowleft4),
                centerTitle: true,
                title: AppbarSubtitle2(text: "lbl_search_now".tr),
                actions: [
                  AppbarStack(
                      margin: getMargin(left: 35, top: 4, right: 35, bottom: 2))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 34, top: 45, right: 34, bottom: 45),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 1),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomSearchView(
                                    focusNode: FocusNode(),
                                    controller:
                                        controller.componentNineteenController,
                                    hintText: "lbl_cream_chicken".tr,
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
                      Padding(
                          padding: getPadding(left: 1, top: 24),
                          child: Row(children: [
                            CustomButton(
                                height: getVerticalSize(55),
                                width: getHorizontalSize(179),
                                text: "lbl_food".tr,
                                variant: ButtonVariant.OutlineBluegray10040,
                                shape: ButtonShape.CustomBorderTL15,
                                padding: ButtonPadding.PaddingAll18,
                                fontStyle:
                                    ButtonFontStyle.RedHatDisplayMedium14),
                            CustomButton(
                                height: getVerticalSize(55),
                                width: getHorizontalSize(180),
                                text: "lbl_restaurant".tr,
                                variant: ButtonVariant.OutlineBluegray10040_1,
                                shape: ButtonShape.CustomBorderTL15,
                                padding: ButtonPadding.PaddingAll18,
                                fontStyle: ButtonFontStyle
                                    .RedHatDisplayMedium14DeeporangeA400)
                          ])),
                      Padding(
                          padding: getPadding(left: 1, top: 36),
                          child: Text("lbl_1_result_found".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRedHatDisplayMedium16Gray500
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.32)))),
                      Container(
                          height: getVerticalSize(223),
                          width: getHorizontalSize(169),
                          margin: getMargin(left: 1, top: 29, bottom: 5),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        height: getVerticalSize(157),
                                        width: getHorizontalSize(169),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray300Cc,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(11))))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        margin: getMargin(bottom: 7),
                                        padding: getPadding(
                                            left: 13,
                                            top: 12,
                                            right: 13,
                                            bottom: 12),
                                        decoration: AppDecoration.fillWhiteA700
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder11),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 2, top: 55),
                                                  child: Text(
                                                      "lbl_cream_chicken".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRedHatDisplayBold14)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 2, top: 3),
                                                  child: Row(children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            bottom: 1),
                                                        child: Text(
                                                            "lbl_24min".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRedHatDisplaySemiBold11Gray500
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.22)))),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgStar,
                                                        height: getSize(15),
                                                        width: getSize(15),
                                                        margin:
                                                            getMargin(left: 5)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 3, top: 1),
                                                        child: Text(
                                                            "lbl_4_8".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRedHatDisplaySemiBold11Gray500
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.22))))
                                                  ])),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 2, top: 1),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 7,
                                                                bottom: 4),
                                                            child: RichText(
                                                                text: TextSpan(
                                                                    children: [
                                                                      TextSpan(
                                                                          text: "lbl_14"
                                                                              .tr,
                                                                          style: TextStyle(
                                                                              color: ColorConstant.black900,
                                                                              fontSize: getFontSize(16),
                                                                              fontFamily: 'Red Hat Display',
                                                                              fontWeight: FontWeight.w700,
                                                                              letterSpacing: getHorizontalSize(0.32))),
                                                                      TextSpan(
                                                                          text: "lbl"
                                                                              .tr,
                                                                          style: TextStyle(
                                                                              color: ColorConstant.black900,
                                                                              fontSize: getFontSize(12.245230674743652),
                                                                              fontFamily: 'Red Hat Display',
                                                                              fontWeight: FontWeight.w700,
                                                                              letterSpacing: getHorizontalSize(0.24))),
                                                                      TextSpan(
                                                                          text: "lbl_99"
                                                                              .tr,
                                                                          style: TextStyle(
                                                                              color: ColorConstant.gray500,
                                                                              fontSize: getFontSize(12),
                                                                              fontFamily: 'Red Hat Display',
                                                                              fontWeight: FontWeight.w700,
                                                                              letterSpacing: getHorizontalSize(0.24)))
                                                                    ]),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left)),
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    36),
                                                            width:
                                                                getHorizontalSize(
                                                                    39),
                                                            child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                children: [
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgCamera,
                                                                      height:
                                                                          getVerticalSize(
                                                                              36),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              39),
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      onTap:
                                                                          () {
                                                                        onTapImgCamera();
                                                                      }),
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgCart,
                                                                      height:
                                                                          getSize(
                                                                              24),
                                                                      width:
                                                                          getSize(
                                                                              24),
                                                                      alignment:
                                                                          Alignment
                                                                              .center)
                                                                ]))
                                                      ]))
                                            ]))),
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage1,
                                    height: getVerticalSize(116),
                                    width: getHorizontalSize(114),
                                    alignment: Alignment.topCenter)
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

  onTapImgCamera() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }

  onTapArrowleft4() {
    Get.back();
  }
}
