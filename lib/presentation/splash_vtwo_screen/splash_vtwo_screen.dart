import 'controller/splash_vtwo_controller.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';

class SplashVtwoScreen extends GetWidget<SplashVtwoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray100,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: getVerticalSize(
                    250,
                  ),
                  width: getHorizontalSize(
                    350,
                  ),
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgVector,
                        height: getVerticalSize(
                          228,
                        ),
                        width: getHorizontalSize(
                          329,
                        ),
                        alignment: Alignment.topCenter,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgVectorDeepOrangeA400,
                        height: getVerticalSize(
                          278,
                        ),
                        width: getHorizontalSize(
                          276,
                        ),
                        alignment: Alignment.centerRight,
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: getMargin(
                  top: 49,
                ),
                color: ColorConstant.deepOrangeA400,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder35,
                ),
                child: Container(
                  height: getSize(
                    123,
                  ),
                  width: getSize(
                    123,
                  ),
                  padding: getPadding(
                    left: 31,
                    top: 24,
                    right: 31,
                    bottom: 24,
                  ),
                  decoration: AppDecoration.fillDeeporangeA400.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder35,
                  ),
                  child: Stack(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgSettings,
                        height: getVerticalSize(
                          74,
                        ),
                        width: getHorizontalSize(
                          59,
                        ),
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 21,
                ),
                child: Text(
                  "lbl_buenoycerca".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRedHatDisplayBold48Black900,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: getVerticalSize(
                    270,
                  ),
                  width: getHorizontalSize(
                    368,
                  ),
                  margin: getMargin(
                    top: 86,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgVector,
                        height: getVerticalSize(
                          270,
                        ),
                        width: getHorizontalSize(
                          337,
                        ),
                        alignment: Alignment.centerLeft,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgVectorDeepOrangeA400,
                        height: getVerticalSize(
                          224,
                        ),
                        width: getHorizontalSize(
                          368,
                        ),
                        alignment: Alignment.bottomCenter,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
