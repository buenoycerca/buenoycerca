import 'controller/on_boarding_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/widgets/custom_icon_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingTwoScreen extends GetWidget<OnBoardingTwoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 30, bottom: 30),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomIconButton(
                          height: 50,
                          width: 50,
                          margin: getMargin(left: 35),
                          alignment: Alignment.centerLeft,
                          onTap: () {
                            onTapBtnArrowleft();
                          },
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowleft)),
                      CustomImageView(
                          imagePath: ImageConstant.imgWavybuddiesdelivery,
                          height: getVerticalSize(469),
                          width: getHorizontalSize(428),
                          margin: getMargin(top: 7)),
                      Padding(
                          padding: getPadding(top: 36),
                          child: Text("msg_safe_food_transfer".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRedHatDisplayBold38)),
                      Container(
                          width: getHorizontalSize(262),
                          margin: getMargin(top: 13),
                          child: Text("msg_we_maintain_safety".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtRedHatDisplayMedium16.copyWith(
                                  letterSpacing: getHorizontalSize(0.32)))),
                      Spacer(),
                      Padding(
                          padding: getPadding(left: 35, right: 36, bottom: 26),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    height: getVerticalSize(10),
                                    margin: getMargin(top: 9, bottom: 4),
                                    child: SmoothIndicator(
                                      offset: 0,
                                      count: 3,
                                      //axisDirection: Axis.horizontal,
                                      effect: ScrollingDotsEffect(
                                          spacing: 8,
                                          activeDotColor:
                                              ColorConstant.deepOrangeA400,
                                          dotColor: ColorConstant.gray400,
                                          dotHeight: getVerticalSize(10),
                                          dotWidth: getHorizontalSize(10)),
                                      size: Size(0.0, 0.0),
                                    )),
                                Text("lbl_skip".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRedHatDisplayMedium18
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.36)))
                              ]))
                    ]))));
  }

  onTapBtnArrowleft() {
    Get.back();
  }
}
