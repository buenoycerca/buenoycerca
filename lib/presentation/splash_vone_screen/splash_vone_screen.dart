import 'controller/splash_vone_controller.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';

class SplashVoneScreen extends GetWidget<SplashVoneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          color: ColorConstant.whiteA700,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.roundedBorder35),
                          child: Container(
                              height: getSize(300),
                              width: getSize(87),
                              padding: getPadding(
                                  left: 31, top: 24, right: 31, bottom: 24),
                              decoration: AppDecoration.white.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder35),
                              child: Stack(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgVolume,
                                    height: getVerticalSize(340),
                                    width: getHorizontalSize(82),
                                    fit: BoxFit.scaleDown,
                                    alignment: Alignment.center)
                              ]))),
                    ]))));
  }
}
