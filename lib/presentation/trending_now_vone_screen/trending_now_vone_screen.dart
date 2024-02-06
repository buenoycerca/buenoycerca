import '../trending_now_vone_screen/widgets/gridrectanglefortytwo_item_widget.dart';
import 'controller/trending_now_vone_controller.dart';
import 'models/gridrectanglefortytwo_item_model.dart';
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

class TrendingNowVoneScreen extends GetWidget<TrendingNowVoneController> {
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
                    onTap: onTapArrowleft2),
                centerTitle: true,
                title: AppbarSubtitle2(text: "lbl_trending_now".tr),
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
                      Padding(
                          padding: getPadding(left: 1, top: 40, right: 1),
                          child: Obx(() => GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisExtent: getVerticalSize(224),
                                      crossAxisCount: 2,
                                      mainAxisSpacing: getHorizontalSize(19),
                                      crossAxisSpacing: getHorizontalSize(19)),
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: controller.trendingNowVoneModelObj
                                  .value.gridrectanglefortytwoItemList.length,
                              itemBuilder: (context, index) {
                                GridrectanglefortytwoItemModel model =
                                    controller.trendingNowVoneModelObj.value
                                        .gridrectanglefortytwoItemList[index];
                                return GridrectanglefortytwoItemWidget(model);
                              })))
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

  onTapArrowleft2() {
    Get.back();
  }
}
