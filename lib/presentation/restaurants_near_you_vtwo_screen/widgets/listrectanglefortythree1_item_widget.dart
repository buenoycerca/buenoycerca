import '../controller/restaurants_near_you_vtwo_controller.dart';
import '../models/listrectanglefortythree1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';

// ignore: must_be_immutable
class Listrectanglefortythree1ItemWidget extends StatelessWidget {
  Listrectanglefortythree1ItemWidget(this.listrectanglefortythree1ItemModelObj);

  Listrectanglefortythree1ItemModel listrectanglefortythree1ItemModelObj;

  var controller = Get.find<RestaurantsNearYouVtwoController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        337,
      ),
      width: getHorizontalSize(
        370,
      ),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: getVerticalSize(
                325,
              ),
              width: getHorizontalSize(
                357,
              ),
              decoration: BoxDecoration(
                color: ColorConstant.gray300Cc,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    18,
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
                      170,
                    ),
                    width: getHorizontalSize(
                      357,
                    ),
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgUnsplashyhswy6uqvk,
                          height: getVerticalSize(
                            170,
                          ),
                          width: getHorizontalSize(
                            357,
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
                              45,
                            ),
                            width: getSize(
                              45,
                            ),
                            margin: getMargin(
                              top: 16,
                              right: 19,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgBookmark,
                                  height: getSize(
                                    45,
                                  ),
                                  width: getSize(
                                    45,
                                  ),
                                  alignment: Alignment.center,
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgFavorite,
                                  height: getSize(
                                    32,
                                  ),
                                  width: getSize(
                                    32,
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
                      left: 23,
                      top: 16,
                    ),
                    child: Text(
                      "lbl_the_steak_house".tr,
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
                      left: 23,
                      top: 11,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 1,
                            bottom: 1,
                          ),
                          child: Text(
                            "lbl_15min".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRedHatDisplayMedium18Gray500
                                .copyWith(
                              letterSpacing: getHorizontalSize(
                                0.36,
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgStar,
                          height: getSize(
                            26,
                          ),
                          width: getSize(
                            26,
                          ),
                          margin: getMargin(
                            left: 9,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 7,
                            bottom: 1,
                          ),
                          child: Text(
                            "lbl_4_2".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRedHatDisplayMedium18Gray500
                                .copyWith(
                              letterSpacing: getHorizontalSize(
                                0.36,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 24,
                      top: 20,
                      bottom: 19,
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: getHorizontalSize(
                            64,
                          ),
                          padding: getPadding(
                            left: 13,
                            top: 3,
                            right: 13,
                            bottom: 3,
                          ),
                          decoration: AppDecoration.txtFillYellow70019.copyWith(
                            borderRadius: BorderRadiusStyle.txtRoundedBorder5,
                          ),
                          child: Text(
                            "lbl_steak".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRedHatDisplayMedium14Amber700
                                .copyWith(
                              letterSpacing: getHorizontalSize(
                                0.28,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            55,
                          ),
                          margin: getMargin(
                            left: 13,
                          ),
                          padding: getPadding(
                            left: 13,
                            top: 3,
                            right: 13,
                            bottom: 3,
                          ),
                          decoration:
                              AppDecoration.txtFillIndigoA20019.copyWith(
                            borderRadius: BorderRadiusStyle.txtRoundedBorder5,
                          ),
                          child: Text(
                            "lbl_fish".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRedHatDisplayMedium14IndigoA200
                                .copyWith(
                              letterSpacing: getHorizontalSize(
                                0.28,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            82,
                          ),
                          margin: getMargin(
                            left: 10,
                          ),
                          padding: getPadding(
                            left: 13,
                            top: 3,
                            right: 13,
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
                            style: AppStyle
                                .txtRedHatDisplayMedium14DeeporangeA400
                                .copyWith(
                              letterSpacing: getHorizontalSize(
                                0.28,
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
    );
  }
}
