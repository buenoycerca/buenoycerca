import '../notification_news_updates_screen/widgets/listrectangle4188_item_widget.dart';
import 'controller/notification_news_updates_controller.dart';
import 'models/listrectangle4188_item_model.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/home_vone_page/home_vone_page.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_dropdown.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_stack.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:buenoycerca/widgets/app_bar/custom_app_bar.dart';
import 'package:buenoycerca/widgets/custom_bottom_bar.dart';
import 'package:buenoycerca/widgets/custom_button.dart';
import 'package:buenoycerca/widgets/custom_icon_button.dart';

class NotificationNewsUpdatesScreen
    extends GetWidget<NotificationNewsUpdatesController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray100,
        appBar: CustomAppBar(
          height: getVerticalSize(
            86,
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
                  items: controller
                      .notificationNewsUpdatesModelObj.value.dropdownItemList,
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
            Container(
              height: getVerticalSize(
                56,
              ),
              width: getHorizontalSize(
                52,
              ),
              margin: getMargin(
                left: 34,
                right: 34,
              ),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: getVerticalSize(
                        49,
                      ),
                      width: getHorizontalSize(
                        52,
                      ),
                      margin: getMargin(
                        top: 7,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.gray300Cc,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            15,
                          ),
                        ),
                      ),
                    ),
                  ),
                  AppbarStack(
                    margin: getMargin(
                      left: 1,
                      right: 1,
                      bottom: 6,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 34,
            top: 45,
            right: 34,
            bottom: 45,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 1,
                ),
                child: Row(
                  children: [
                    CustomButton(
                      height: getVerticalSize(
                        55,
                      ),
                      width: getHorizontalSize(
                        179,
                      ),
                      text: "lbl_delivery".tr,
                      variant: ButtonVariant.OutlineBluegray10040_1,
                      shape: ButtonShape.CustomBorderTL15,
                      padding: ButtonPadding.PaddingAll18,
                      fontStyle:
                          ButtonFontStyle.RedHatDisplayMedium14DeeporangeA400,
                    ),
                    CustomButton(
                      height: getVerticalSize(
                        55,
                      ),
                      width: getHorizontalSize(
                        180,
                      ),
                      text: "lbl_news_update".tr,
                      variant: ButtonVariant.OutlineBluegray10040,
                      shape: ButtonShape.CustomBorderTL15,
                      padding: ButtonPadding.PaddingAll18,
                      fontStyle: ButtonFontStyle.RedHatDisplayMedium14,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 30,
                ),
                child: Text(
                  "lbl_points".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRedHatDisplayBold25Black900.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.5,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 21,
                  right: 1,
                ),
                child: Obx(
                  () => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: getVerticalSize(
                          20,
                        ),
                      );
                    },
                    itemCount: controller.notificationNewsUpdatesModelObj.value
                        .listrectangle4188ItemList.length,
                    itemBuilder: (context, index) {
                      Listrectangle4188ItemModel model = controller
                          .notificationNewsUpdatesModelObj
                          .value
                          .listrectangle4188ItemList[index];
                      return Listrectangle4188ItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 33,
                ),
                child: Text(
                  "lbl_updates".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRedHatDisplayBold25Black900,
                ),
              ),
              Container(
                height: getVerticalSize(
                  96,
                ),
                width: getHorizontalSize(
                  357,
                ),
                margin: getMargin(
                  left: 1,
                  top: 18,
                  bottom: 5,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: getVerticalSize(
                          95,
                        ),
                        width: getHorizontalSize(
                          344,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.whiteA700,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              12,
                            ),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: ColorConstant.gray80007,
                              spreadRadius: getHorizontalSize(
                                2,
                              ),
                              blurRadius: getHorizontalSize(
                                2,
                              ),
                              offset: Offset(
                                0,
                                20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: getMargin(
                          top: 1,
                        ),
                        padding: getPadding(
                          top: 10,
                          bottom: 10,
                        ),
                        decoration: AppDecoration.fillWhiteA700.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder15,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomIconButton(
                              height: 50,
                              width: 50,
                              margin: getMargin(
                                left: 18,
                                top: 23,
                                bottom: 22,
                              ),
                              shape: IconButtonShape.RoundedBorder10,
                              padding: IconButtonPadding.PaddingAll9,
                              child: CustomImageView(
                                svgPath: ImageConstant.imgClock,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 17,
                                top: 16,
                                right: 16,
                                bottom: 10,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "msg_your_app_is_updated".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRedHatDisplayBold18,
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 3,
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: getHorizontalSize(
                                            181,
                                          ),
                                          margin: getMargin(
                                            bottom: 9,
                                          ),
                                          child: Text(
                                            "msg_buenoycerca_app_version".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRedHatDisplaySemiBold11Gray5003
                                                .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                0.22,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 26,
                                            top: 26,
                                          ),
                                          child: Text(
                                            "lbl_yesterday".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRedHatDisplayMedium10
                                                .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                0.2,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
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
