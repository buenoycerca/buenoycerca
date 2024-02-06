import '../controller/home_vsix_controller.dart';
import '../models/listrectanglefortytwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';

// ignore: must_be_immutable
class ListrectanglefortytwoItemWidget extends StatelessWidget {
  ListrectanglefortytwoItemWidget(this.listrectanglefortytwoItemModelObj);

  ListrectanglefortytwoItemModel listrectanglefortytwoItemModelObj;

  var controller = Get.find<HomeVsixController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        height: getVerticalSize(
          281,
        ),
        width: getHorizontalSize(
          223,
        ),
        margin: getMargin(
          right: 14,
        ),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: getVerticalSize(
                  198,
                ),
                width: getHorizontalSize(
                  213,
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
              alignment: Alignment.bottomLeft,
              child: Container(
                margin: getMargin(
                  bottom: 10,
                ),
                padding: getPadding(
                  left: 19,
                  top: 20,
                  right: 19,
                  bottom: 20,
                ),
                decoration: AppDecoration.fillWhiteA700.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder15,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 61,
                      ),
                      child: Text(
                        "lbl_cream_chicken".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRedHatDisplayBold18,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 8,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "lbl_24min".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRedHatDisplayMedium14.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.28,
                              ),
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgStar,
                            height: getSize(
                              18,
                            ),
                            width: getSize(
                              18,
                            ),
                            margin: getMargin(
                              left: 5,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 4,
                            ),
                            child: Text(
                              "lbl_4_8".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRedHatDisplayMedium14.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.28,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 6,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 7,
                              bottom: 2,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_14".tr,
                                    style: TextStyle(
                                      color: ColorConstant.black900,
                                      fontSize: getFontSize(
                                        20,
                                      ),
                                      fontFamily: 'Red Hat Display',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "lbl".tr,
                                    style: TextStyle(
                                      color: ColorConstant.black900,
                                      fontSize: getFontSize(
                                        15.392050743103027,
                                      ),
                                      fontFamily: 'Red Hat Display',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "lbl_99".tr,
                                    style: TextStyle(
                                      color: ColorConstant.gray500,
                                      fontSize: getFontSize(
                                        16,
                                      ),
                                      fontFamily: 'Red Hat Display',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              38,
                            ),
                            width: getHorizontalSize(
                              42,
                            ),
                            margin: getMargin(
                              left: 74,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgAdd,
                                  height: getVerticalSize(
                                    38,
                                  ),
                                  width: getHorizontalSize(
                                    42,
                                  ),
                                  alignment: Alignment.center,
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgCart,
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgImage1,
              height: getVerticalSize(
                146,
              ),
              width: getHorizontalSize(
                144,
              ),
              alignment: Alignment.topLeft,
              margin: getMargin(
                left: 34,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
