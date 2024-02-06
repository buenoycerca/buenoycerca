import '../controller/home_vsix_controller.dart';
import '../models/listrectanglefortythree_item_model.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';

// ignore: must_be_immutable
class ListrectanglefortythreeItemWidget extends StatelessWidget {
  ListrectanglefortythreeItemWidget(this.listrectanglefortythreeItemModelObj);

  ListrectanglefortythreeItemModel listrectanglefortythreeItemModelObj;

  var controller = Get.find<HomeVsixController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        height: getVerticalSize(
          273,
        ),
        width: getHorizontalSize(
          299,
        ),
        margin: getMargin(
          right: 14,
        ),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: getVerticalSize(
                  263,
                ),
                width: getHorizontalSize(
                  289,
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
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                decoration: AppDecoration.fillWhiteA700.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder15,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: getVerticalSize(
                        138,
                      ),
                      width: getHorizontalSize(
                        289,
                      ),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgUnsplashyhswy6uqvk,
                            height: getVerticalSize(
                              138,
                            ),
                            width: getHorizontalSize(
                              289,
                            ),
                            radius: BorderRadius.only(
                              topLeft: Radius.circular(
                                getHorizontalSize(
                                  15,
                                ),
                              ),
                              topRight: Radius.circular(
                                getHorizontalSize(
                                  15,
                                ),
                              ),
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: getSize(
                                37,
                              ),
                              width: getSize(
                                37,
                              ),
                              margin: getMargin(
                                top: 14,
                                right: 17,
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgClose,
                                    height: getSize(
                                      37,
                                    ),
                                    width: getSize(
                                      37,
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgLightbulb,
                                    height: getSize(
                                      24,
                                    ),
                                    width: getSize(
                                      24,
                                    ),
                                    alignment: Alignment.center,
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
                        left: 19,
                        top: 14,
                      ),
                      child: Text(
                        "lbl_the_steak_house".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRedHatDisplayBold2123,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 19,
                        top: 1,
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: getVerticalSize(
                              21,
                            ),
                            width: getHorizontalSize(
                              76,
                            ),
                            child: Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgStar,
                                  height: getSize(
                                    21,
                                  ),
                                  width: getSize(
                                    21,
                                  ),
                                  alignment: Alignment.centerRight,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "lbl_15min".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRedHatDisplayRegular1592Bluegray300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 5,
                            ),
                            child: Text(
                              "lbl_4_2".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle
                                  .txtRedHatDisplayRegular1592Bluegray300,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 19,
                        top: 13,
                        bottom: 20,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: getHorizontalSize(
                              48,
                            ),
                            padding: getPadding(
                              left: 10,
                              top: 3,
                              right: 10,
                              bottom: 3,
                            ),
                            decoration: AppDecoration.txtFillAmber100.copyWith(
                              borderRadius: BorderRadiusStyle.txtRoundedBorder5,
                            ),
                            child: Text(
                              "lbl_steak".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.txtRedHatDisplayRegular1052Amber7001,
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(
                              39,
                            ),
                            margin: getMargin(
                              left: 10,
                            ),
                            padding: getPadding(
                              left: 10,
                              top: 3,
                              right: 10,
                              bottom: 3,
                            ),
                            decoration:
                                AppDecoration.txtFillIndigo10066.copyWith(
                              borderRadius: BorderRadiusStyle.txtRoundedBorder5,
                            ),
                            child: Text(
                              "lbl_fish".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle
                                  .txtRedHatDisplayRegular1052IndigoA200,
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(
                              57,
                            ),
                            margin: getMargin(
                              left: 10,
                            ),
                            padding: getPadding(
                              left: 10,
                              top: 3,
                              right: 10,
                              bottom: 3,
                            ),
                            decoration:
                                AppDecoration.txtFillDeeporangeA40033.copyWith(
                              borderRadius: BorderRadiusStyle.txtRoundedBorder5,
                            ),
                            child: Text(
                              "lbl_burgers".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRedHatDisplayRegular1052,
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
    );
  }
}
