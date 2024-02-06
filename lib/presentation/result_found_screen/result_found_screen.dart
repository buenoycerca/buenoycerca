import 'controller/result_found_controller.dart';
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

class ResultFoundScreen extends GetWidget<ResultFoundController> {
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
                    onTap: onTapArrowleft6),
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 1),
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
                          padding: getPadding(top: 24),
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
                              padding: getPadding(left: 1, top: 36),
                              child: Text("lbl_0_result_found".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtRedHatDisplayMedium16Gray500
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.32))))),
                      Spacer(),
                      CustomImageView(
                          svgPath: ImageConstant.imgSearchDeepOrangeA400,
                          height: getSize(116),
                          width: getSize(116)),
                      Padding(
                          padding: getPadding(top: 21),
                          child: Text("msg_no_results_found".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRedHatDisplaySemiBold18
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.36)))),
                      Container(
                          width: getHorizontalSize(210),
                          margin: getMargin(top: 9, bottom: 73),
                          child: Text("msg_we_can_t_find_any".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtRedHatDisplayMedium14Gray500
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.28))))
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

  onTapArrowleft6() {
    Get.back();
  }
}
