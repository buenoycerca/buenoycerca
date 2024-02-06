import 'controller/account_information_controller.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/home_vone_page/home_vone_page.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_iconbutton.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_stack.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:buenoycerca/widgets/app_bar/custom_app_bar.dart';
import 'package:buenoycerca/widgets/custom_bottom_bar.dart';
import 'package:buenoycerca/widgets/custom_button.dart';

class AccountInformationScreen extends GetWidget<AccountInformationController> {
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
                    onTap: onTapArrowleft10),
                centerTitle: true,
                title: AppbarSubtitle2(text: "msg_account_information2".tr),
                actions: [
                  AppbarStack(
                      margin: getMargin(left: 35, top: 4, right: 35, bottom: 2))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 35, top: 106, right: 35),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: getPadding(
                              left: 26, top: 16, right: 26, bottom: 16),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding:
                                        getPadding(left: 2, top: 7, bottom: 6),
                                    child: Text("lbl_charlie_greer".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRedHatDisplayMedium14
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.28)))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgClockGray400,
                                    height: getSize(32),
                                    width: getSize(32),
                                    margin: getMargin(top: 1))
                              ])),
                      Container(
                          margin: getMargin(top: 20),
                          padding: getPadding(
                              left: 26, top: 16, right: 26, bottom: 16),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding:
                                        getPadding(left: 2, top: 8, bottom: 5),
                                    child: Text(
                                        "msg_charlie_greer899_buenoycerca_com".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRedHatDisplayMedium14
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.28)))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgClockGray400,
                                    height: getSize(32),
                                    width: getSize(32),
                                    margin: getMargin(top: 1))
                              ])),
                      Container(
                          margin: getMargin(top: 20),
                          padding: getPadding(
                              left: 26, top: 16, right: 26, bottom: 16),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding:
                                        getPadding(left: 2, top: 7, bottom: 6),
                                    child: Text("lbl_0000_0000_0000".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRedHatDisplayMedium14
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.28)))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgClockGray400,
                                    height: getSize(32),
                                    width: getSize(32),
                                    margin: getMargin(top: 1))
                              ])),
                      CustomButton(
                          height: getVerticalSize(66),
                          text: "lbl_save_changes".tr.toUpperCase(),
                          margin: getMargin(top: 51, bottom: 5))
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

  onTapArrowleft10() {
    Get.back();
  }
}
