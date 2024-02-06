import 'controller/on_boarding_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingOneScreen extends GetWidget<OnBoardingOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray100,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            top: 56,
            bottom: 56,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgWavybuddieschoosing,
                height: getVerticalSize(
                  385,
                ),
                width: getHorizontalSize(
                  428,
                ),
                margin: getMargin(
                  top: 74,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 76,
                ),
                child: Text(
                  "lbl_order_your_food".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRedHatDisplayBold38,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  218,
                ),
                margin: getMargin(
                  top: 12,
                ),
                child: Text(
                  "msg_now_you_can_order".tr,
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtRedHatDisplayMedium16.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.32,
                    ),
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: getPadding(
                  left: 35,
                  right: 36,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: getVerticalSize(
                        10,
                      ),
                      margin: getMargin(
                        top: 9,
                        bottom: 4,
                      ),
                      child: SmoothIndicator(
                        offset: 0,
                        count: 3,
                        //axisDirection: Axis.horizontal,
                        effect: ScrollingDotsEffect(
                          spacing: 8,
                          activeDotColor: ColorConstant.deepOrangeA400,
                          dotColor: ColorConstant.gray400,
                          dotHeight: getVerticalSize(
                            10,
                          ),
                          dotWidth: getHorizontalSize(
                            10,
                          ),
                        ),
                        size: Size(0.0, 0.0),
                      ),
                    ),
                    Text(
                      "lbl_skip".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRedHatDisplayMedium18.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.36,
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
    );
  }
}
