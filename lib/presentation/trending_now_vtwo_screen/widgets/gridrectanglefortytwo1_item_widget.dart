import '../controller/trending_now_vtwo_controller.dart';
import '../models/gridrectanglefortytwo1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';

// ignore: must_be_immutable
class Gridrectanglefortytwo1ItemWidget extends StatelessWidget {
  Gridrectanglefortytwo1ItemWidget(this.gridrectanglefortytwo1ItemModelObj);

  Gridrectanglefortytwo1ItemModel gridrectanglefortytwo1ItemModelObj;

  var controller = Get.find<TrendingNowVtwoController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        223,
      ),
      width: getHorizontalSize(
        169,
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: getVerticalSize(
                157,
              ),
              width: getHorizontalSize(
                169,
              ),
              decoration: BoxDecoration(
                color: ColorConstant.gray300Cc,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    11,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: getMargin(
                bottom: 7,
              ),
              padding: getPadding(
                all: 15,
              ),
              decoration: AppDecoration.fillWhiteA700.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder11,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 52,
                    ),
                    child: Text(
                      "lbl_cream_chicken".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRedHatDisplayBold14,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 3,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            bottom: 1,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      bottom: 1,
                                    ),
                                    child: Text(
                                      "lbl_24min".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtRedHatDisplaySemiBold11Gray500
                                          .copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.22,
                                        ),
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgStar,
                                    height: getSize(
                                      15,
                                    ),
                                    width: getSize(
                                      15,
                                    ),
                                    margin: getMargin(
                                      left: 5,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 3,
                                      top: 1,
                                    ),
                                    child: Text(
                                      "lbl_4_8".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtRedHatDisplaySemiBold11Gray500
                                          .copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.22,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 9,
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "lbl_14".tr,
                                        style: TextStyle(
                                          color: ColorConstant.black900,
                                          fontSize: getFontSize(
                                            16,
                                          ),
                                          fontFamily: 'Red Hat Display',
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: getHorizontalSize(
                                            0.32,
                                          ),
                                        ),
                                      ),
                                      TextSpan(
                                        text: "lbl".tr,
                                        style: TextStyle(
                                          color: ColorConstant.black900,
                                          fontSize: getFontSize(
                                            12.245230674743652,
                                          ),
                                          fontFamily: 'Red Hat Display',
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: getHorizontalSize(
                                            0.24,
                                          ),
                                        ),
                                      ),
                                      TextSpan(
                                        text: "lbl_99".tr,
                                        style: TextStyle(
                                          color: ColorConstant.gray500,
                                          fontSize: getFontSize(
                                            12,
                                          ),
                                          fontFamily: 'Red Hat Display',
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: getHorizontalSize(
                                            0.24,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            36,
                          ),
                          width: getHorizontalSize(
                            39,
                          ),
                          margin: getMargin(
                            top: 15,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgCamera,
                                height: getVerticalSize(
                                  36,
                                ),
                                width: getHorizontalSize(
                                  39,
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
              116,
            ),
            width: getHorizontalSize(
              114,
            ),
            alignment: Alignment.topCenter,
          ),
        ],
      ),
    );
  }
}
