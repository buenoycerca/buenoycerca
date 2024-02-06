import '../notification_delivery_screen/widgets/list139180foodpla_item_widget.dart';
import 'controller/notification_delivery_controller.dart';
import 'models/list139180foodpla_item_model.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/home_vone_page/home_vone_page.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_dropdown.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_stack.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:buenoycerca/widgets/app_bar/custom_app_bar.dart';
import 'package:buenoycerca/widgets/custom_bottom_bar.dart';
import 'package:buenoycerca/widgets/custom_button.dart';

class NotificationDeliveryScreen
    extends GetWidget<NotificationDeliveryController> {
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
                      .notificationDeliveryModelObj.value.dropdownItemList,
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
            right: 34,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  top: 45,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      height: getVerticalSize(
                        55,
                      ),
                      width: getHorizontalSize(
                        179,
                      ),
                      text: "lbl_delivery".tr,
                      variant: ButtonVariant.OutlineBluegray10040,
                      shape: ButtonShape.CustomBorderTL15,
                      padding: ButtonPadding.PaddingAll18,
                      fontStyle: ButtonFontStyle.RedHatDisplayMedium14,
                    ),
                    CustomButton(
                      height: getVerticalSize(
                        55,
                      ),
                      width: getHorizontalSize(
                        180,
                      ),
                      text: "lbl_news_update".tr,
                      variant: ButtonVariant.OutlineBluegray10040_1,
                      shape: ButtonShape.CustomBorderTL15,
                      padding: ButtonPadding.PaddingAll18,
                      fontStyle:
                          ButtonFontStyle.RedHatDisplayMedium14DeeporangeA400,
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(
                  88,
                ),
                width: getHorizontalSize(
                  358,
                ),
                margin: getMargin(
                  top: 32,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: getPadding(
                          right: 19,
                          bottom: 13,
                        ),
                        child: Text(
                          "lbl_3_09_pm".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRedHatDisplayMedium13,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: getVerticalSize(
                          88,
                        ),
                        width: getHorizontalSize(
                          358,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                height: getVerticalSize(
                                  88,
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
                                      color: ColorConstant.gray8000c,
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
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                margin: EdgeInsets.all(0),
                                color: ColorConstant.whiteA700,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder15,
                                ),
                                child: Container(
                                  height: getVerticalSize(
                                    88,
                                  ),
                                  width: getHorizontalSize(
                                    358,
                                  ),
                                  decoration:
                                      AppDecoration.fillWhiteA700.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder15,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 21,
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgImage1,
                                                height: getVerticalSize(
                                                  67,
                                                ),
                                                width: getHorizontalSize(
                                                  65,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 27,
                                                  top: 8,
                                                  bottom: 12,
                                                ),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "lbl_cream_chicken".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRedHatDisplayBold18,
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        top: 6,
                                                      ),
                                                      child: Text(
                                                        "lbl_on_the_way".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRedHatDisplayMedium12
                                                            .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                            0.24,
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
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          height: getVerticalSize(
                                            88,
                                          ),
                                          width: getHorizontalSize(
                                            358,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                  height: getVerticalSize(
                                                    88,
                                                  ),
                                                  width: getHorizontalSize(
                                                    344,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.whiteA700,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      getHorizontalSize(
                                                        12,
                                                      ),
                                                    ),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: ColorConstant
                                                            .gray8000c,
                                                        spreadRadius:
                                                            getHorizontalSize(
                                                          2,
                                                        ),
                                                        blurRadius:
                                                            getHorizontalSize(
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
                                                  padding: getPadding(
                                                    left: 21,
                                                    top: 10,
                                                    right: 21,
                                                    bottom: 10,
                                                  ),
                                                  decoration: AppDecoration
                                                      .fillWhiteA700
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder15,
                                                  ),
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgImage1,
                                                        height: getVerticalSize(
                                                          67,
                                                        ),
                                                        width:
                                                            getHorizontalSize(
                                                          65,
                                                        ),
                                                        margin: getMargin(
                                                          top: 1,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          left: 27,
                                                          top: 9,
                                                          bottom: 14,
                                                        ),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              "lbl_cream_chicken"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRedHatDisplayBold18,
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  getPadding(
                                                                top: 5,
                                                              ),
                                                              child: Text(
                                                                "lbl_on_the_way"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRedHatDisplaySemiBold11Black900
                                                                    .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                    0.22,
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
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 15,
                ),
                child: Obx(
                  () => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: getVerticalSize(
                          15,
                        ),
                      );
                    },
                    itemCount: controller.notificationDeliveryModelObj.value
                        .list139180foodplaItemList.length,
                    itemBuilder: (context, index) {
                      List139180foodplaItemModel model = controller
                          .notificationDeliveryModelObj
                          .value
                          .list139180foodplaItemList[index];
                      return List139180foodplaItemWidget(
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
