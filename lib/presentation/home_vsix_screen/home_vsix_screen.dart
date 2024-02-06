import '../home_vsix_screen/widgets/listrectanglefortythree_item_widget.dart';
import '../home_vsix_screen/widgets/listrectanglefortytwo_item_widget.dart';
import 'controller/home_vsix_controller.dart';
import 'models/listrectanglefortythree_item_model.dart';
import 'models/listrectanglefortytwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/home_vone_page/home_vone_page.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_dropdown.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_stack.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:buenoycerca/widgets/app_bar/custom_app_bar.dart';
import 'package:buenoycerca/widgets/custom_bottom_bar.dart';
import 'package:buenoycerca/widgets/custom_icon_button.dart';
import 'package:buenoycerca/widgets/custom_search_view.dart';

class HomeVsixScreen extends GetWidget<HomeVsixController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.gray100,
        appBar: CustomAppBar(
          height: getVerticalSize(
            83,
          ),
          title: Padding(
            padding: getPadding(
              left: 34,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppbarDropdown(
                  hintText: "lbl_your_location".tr,
                  items: controller.homeVsixModelObj.value.dropdownItemList,
                  onTap: (value) {
                    controller.onSelected(value);
                  },
                  margin: getMargin(
                    right: 32,
                  ),
                ),
                AppbarSubtitle3(
                  text: "msg_karachi_pakistan".tr,
                  margin: getMargin(
                    top: 3,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            AppbarStack(
              margin: getMargin(
                left: 35,
                top: 3,
                right: 35,
                bottom: 3,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    left: 35,
                    top: 44,
                    right: 34,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: CustomSearchView(
                          focusNode: FocusNode(),
                          controller: controller.componentNineteenController,
                          hintText: "lbl_search".tr,
                          prefix: Container(
                            margin: getMargin(
                              left: 23,
                              top: 21,
                              right: 10,
                              bottom: 21,
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgSearch,
                            ),
                          ),
                          prefixConstraints: BoxConstraints(
                            maxHeight: getVerticalSize(
                              66,
                            ),
                          ),
                        ),
                      ),
                      CustomIconButton(
                        height: 66,
                        width: 68,
                        margin: getMargin(
                          left: 13,
                        ),
                        variant: IconButtonVariant.FillDeeporangeA400,
                        padding: IconButtonPadding.PaddingAll17,
                        child: CustomImageView(
                          svgPath: ImageConstant.imgSettingsWhiteA700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: getPadding(
                  left: 35,
                  top: 40,
                ),
                child: IntrinsicWidth(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: EdgeInsets.all(0),
                        color: ColorConstant.deepOrange50,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.roundedBorder15,
                        ),
                        child: Container(
                          height: getVerticalSize(
                            53,
                          ),
                          width: getHorizontalSize(
                            141,
                          ),
                          decoration: AppDecoration.fillDeeporange50.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder15,
                          ),
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgBurger153x106,
                                height: getVerticalSize(
                                  53,
                                ),
                                width: getHorizontalSize(
                                  106,
                                ),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(
                                    15,
                                  ),
                                ),
                                alignment: Alignment.centerRight,
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: getPadding(
                                    left: 13,
                                    bottom: 16,
                                  ),
                                  child: Text(
                                    "lbl_burgers".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRedHatDisplayBold13
                                        .copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.26,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: getMargin(
                          left: 15,
                        ),
                        color: ColorConstant.amber100,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.roundedBorder15,
                        ),
                        child: Container(
                          height: getVerticalSize(
                            53,
                          ),
                          width: getHorizontalSize(
                            141,
                          ),
                          decoration: AppDecoration.fillAmber100.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder15,
                          ),
                          child: Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: getPadding(
                                    left: 13,
                                  ),
                                  child: Text(
                                    "lbl_pizzas".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRedHatDisplayBold13Amber700
                                        .copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.26,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgPizza153x125,
                                height: getVerticalSize(
                                  53,
                                ),
                                width: getHorizontalSize(
                                  125,
                                ),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(
                                    15,
                                  ),
                                ),
                                alignment: Alignment.centerRight,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: getHorizontalSize(
                          141,
                        ),
                        margin: getMargin(
                          left: 15,
                        ),
                        decoration: AppDecoration.fillIndigo10066.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder15,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 17,
                                bottom: 17,
                              ),
                              child: Text(
                                "lbl_cakes".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRedHatDisplayBold13IndigoA200
                                    .copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.26,
                                  ),
                                ),
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgCake153x89,
                              height: getVerticalSize(
                                53,
                              ),
                              width: getHorizontalSize(
                                89,
                              ),
                              radius: BorderRadius.circular(
                                getHorizontalSize(
                                  15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 35,
                    top: 48,
                  ),
                  child: Text(
                    "lbl_trending_now".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRedHatDisplayBold25Black900.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.5,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: getVerticalSize(
                  303,
                ),
                child: Obx(
                  () => ListView.separated(
                    padding: getPadding(
                      left: 35,
                      top: 22,
                    ),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: getVerticalSize(
                          14,
                        ),
                      );
                    },
                    itemCount: controller.homeVsixModelObj.value
                        .listrectanglefortytwoItemList.length,
                    itemBuilder: (context, index) {
                      ListrectanglefortytwoItemModel model = controller
                          .homeVsixModelObj
                          .value
                          .listrectanglefortytwoItemList[index];
                      return ListrectanglefortytwoItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 35,
                    top: 38,
                  ),
                  child: Text(
                    "msg_restaurants_near".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRedHatDisplayBold25Black900.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.5,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: getVerticalSize(
                  298,
                ),
                child: Obx(
                  () => ListView.separated(
                    padding: getPadding(
                      left: 35,
                      top: 25,
                    ),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: getVerticalSize(
                          14,
                        ),
                      );
                    },
                    itemCount: controller.homeVsixModelObj.value
                        .listrectanglefortythreeItemList.length,
                    itemBuilder: (context, index) {
                      ListrectanglefortythreeItemModel model = controller
                          .homeVsixModelObj
                          .value
                          .listrectanglefortythreeItemList[index];
                      return ListrectanglefortythreeItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Get.toNamed(getCurrentRoute(type), id: 1);
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeVonePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeVonePage:
        return HomeVonePage();
      default:
        return DefaultWidget();
    }
  }
}
