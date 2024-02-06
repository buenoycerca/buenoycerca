import 'controller/add_new_address_manually_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/home_vone_page/home_vone_page.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_iconbutton.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_stack_1.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:buenoycerca/widgets/app_bar/custom_app_bar.dart';
import 'package:buenoycerca/widgets/custom_bottom_bar.dart';

class AddNewAddressManuallyOneScreen
    extends GetWidget<AddNewAddressManuallyOneController> {
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
                    onTap: onTapArrowleft12),
                centerTitle: true,
                title: AppbarSubtitle2(text: "msg_invite_your_friends".tr),
                actions: [
                  AppbarStack1(
                      margin: getMargin(left: 35, top: 4, right: 35, bottom: 2))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 35, top: 52, right: 35, bottom: 52),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          color: ColorConstant.deepOrangeA400,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.circleBorder114),
                          child: Container(
                              height: getSize(228),
                              width: getSize(228),
                              padding: getPadding(all: 32),
                              decoration: AppDecoration.fillDeeporangeA400
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder114),
                              child: Stack(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgCurvedgift,
                                    height: getSize(164),
                                    width: getSize(164),
                                    alignment: Alignment.center)
                              ]))),
                      Padding(
                          padding: getPadding(top: 62),
                          child: Text("lbl_refer_a_friend".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRedHatDisplayBold25Black900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.5)))),
                      Container(
                          width: getHorizontalSize(229),
                          margin: getMargin(top: 11),
                          child: Text("msg_share_your_promo".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtRedHatDisplayMedium16.copyWith(
                                  letterSpacing: getHorizontalSize(0.32)))),
                      Container(
                          margin: getMargin(top: 83, bottom: 5),
                          padding: getPadding(
                              left: 23, top: 21, right: 23, bottom: 21),
                          decoration: AppDecoration.fillDeeporange50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgTrash,
                                height: getVerticalSize(20),
                                width: getHorizontalSize(29),
                                margin: getMargin(top: 6, bottom: 5)),
                            Padding(
                                padding:
                                    getPadding(left: 18, top: 5, bottom: 2),
                                child: Text("lbl_buenoycercapartnercg".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRedHatDisplaySemiBold18DeeporangeA400
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.36)))),
                            Spacer(),
                            CustomImageView(
                                svgPath:
                                    ImageConstant.imgLockDeepOrangeA40032x32,
                                height: getSize(32),
                                width: getSize(32),
                                margin: getMargin(right: 6))
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

  onTapArrowleft12() {
    Get.back();
  }
}
