import 'controller/profile_preferences_controller.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/home_vone_page/home_vone_page.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_iconbutton.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_stack.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:buenoycerca/widgets/app_bar/custom_app_bar.dart';
import 'package:buenoycerca/widgets/custom_bottom_bar.dart';
import 'package:buenoycerca/widgets/custom_icon_button.dart';

class ProfilePreferencesScreen extends GetWidget<ProfilePreferencesController> {
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
                    onTap: onTapArrowleft9),
                centerTitle: true,
                title: AppbarSubtitle2(text: "lbl_preferences".tr),
                actions: [
                  AppbarStack(
                      margin: getMargin(left: 35, top: 4, right: 35, bottom: 2))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 25, top: 56, right: 25, bottom: 56),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomIconButton(
                                    height: 50,
                                    width: 50,
                                    shape: IconButtonShape.RoundedBorder10,
                                    child: CustomImageView(
                                        svgPath: ImageConstant
                                            .imgUserDeepOrangeA40050x50)),
                                Padding(
                                    padding:
                                        getPadding(left: 18, top: 2, bottom: 4),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("msg_account_information".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRedHatDisplaySemiBold18
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.36))),
                                          Padding(
                                              padding: getPadding(top: 4),
                                              child: Text(
                                                  "msg_change_your_account".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRedHatDisplaySemiBold11Gray500
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.22))))
                                        ])),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getSize(30),
                                    width: getSize(30),
                                    margin: getMargin(top: 10, bottom: 10))
                              ])),
                      Padding(
                          padding: getPadding(left: 10, top: 40, right: 1),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomIconButton(
                                    height: 50,
                                    width: 50,
                                    shape: IconButtonShape.RoundedBorder10,
                                    child: CustomImageView(
                                        svgPath: ImageConstant
                                            .imgBookmarkDeepOrangeA400)),
                                Padding(
                                    padding:
                                        getPadding(left: 18, top: 2, bottom: 4),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(left: 1),
                                              child: Text("lbl_password".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRedHatDisplaySemiBold18
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.36)))),
                                          Padding(
                                              padding: getPadding(top: 4),
                                              child: Text(
                                                  "msg_change_your_password".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRedHatDisplaySemiBold11Gray500
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.22))))
                                        ])),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getSize(30),
                                    width: getSize(30),
                                    margin: getMargin(top: 10, bottom: 10))
                              ])),
                      Padding(
                          padding: getPadding(left: 10, top: 44, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(top: 5),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomIconButton(
                                              height: 50,
                                              width: 50,
                                              shape: IconButtonShape
                                                  .RoundedBorder10,
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgBookmarkDeepOrangeA40050x50)),
                                          CustomIconButton(
                                              height: 50,
                                              width: 50,
                                              margin: getMargin(top: 49),
                                              shape: IconButtonShape
                                                  .RoundedBorder10,
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgVideocameraDeepOrangeA400)),
                                          CustomIconButton(
                                              height: 50,
                                              width: 50,
                                              margin: getMargin(top: 40),
                                              shape: IconButtonShape
                                                  .RoundedBorder10,
                                              child: CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgFile))
                                        ])),
                                Padding(
                                    padding: getPadding(left: 18, bottom: 5),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("msg_delivery_locations".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRedHatDisplaySemiBold18
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.36))),
                                          Container(
                                              width: getHorizontalSize(180),
                                              margin:
                                                  getMargin(left: 1, top: 1),
                                              child: Text(
                                                  "msg_edit_or_change_your".tr,
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRedHatDisplaySemiBold11Gray5003
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.22)))),
                                          Padding(
                                              padding: getPadding(top: 54),
                                              child: Text(
                                                  "lbl_payment_methods".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRedHatDisplaySemiBold18
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.36)))),
                                          Padding(
                                              padding: getPadding(top: 2),
                                              child: Text(
                                                  "msg_add_your_credit".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRedHatDisplaySemiBold11Gray500
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.22)))),
                                          Padding(
                                              padding: getPadding(top: 46),
                                              child: Text(
                                                  "msg_invite_your_friends".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRedHatDisplaySemiBold18
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.36)))),
                                          Padding(
                                              padding: getPadding(top: 3),
                                              child: Text(
                                                  "msg_get_3_for_each".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRedHatDisplaySemiBold11Gray500
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.22))))
                                        ])),
                                Spacer(),
                                Padding(
                                    padding: getPadding(top: 15, bottom: 10),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgArrowright,
                                              height: getSize(30),
                                              width: getSize(30),
                                              alignment: Alignment.center),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgArrowright,
                                              height: getSize(30),
                                              width: getSize(30),
                                              margin: getMargin(top: 69)),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgArrowright,
                                              height: getSize(30),
                                              width: getSize(30),
                                              alignment: Alignment.center,
                                              margin: getMargin(top: 60))
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

  onTapArrowleft9() {
    Get.back();
  }
}
