import 'controller/feedback_controller.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_dropdown.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_stack.dart';
import 'package:buenoycerca/widgets/app_bar/custom_app_bar.dart';
import 'package:buenoycerca/widgets/custom_button.dart';

class FeedbackScreen extends GetWidget<FeedbackController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray100,
        appBar: CustomAppBar(
          height: getVerticalSize(
            83,
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
                  items: controller.feedbackModelObj.value.dropdownItemList,
                  onTap: (value) {
                    controller.onSelected(value);
                  },
                  margin: getMargin(
                    right: 31,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      top: 3,
                    ),
                    child: Text(
                      "msg_karachi_pakistan".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRedHatDisplayMedium18Black900.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.36,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            AppbarStack(
              margin: getMargin(
                left: 35,
                top: 3,
                right: 35,
                bottom: 3,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 33,
            top: 57,
            right: 33,
            bottom: 57,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 1,
                ),
                child: Text(
                  "msg_you_received_the".tr,
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
                  left: 4,
                  top: 5,
                ),
                child: Text(
                  "lbl_order_564963".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRedHatDisplaySemiBold18Black90066.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.36,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 77,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgStarDeepOrange50,
                      height: getSize(
                        30,
                      ),
                      width: getSize(
                        30,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgStarDeepOrange50,
                      height: getSize(
                        30,
                      ),
                      width: getSize(
                        30,
                      ),
                      margin: getMargin(
                        left: 3,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgStarDeepOrange50,
                      height: getSize(
                        30,
                      ),
                      width: getSize(
                        30,
                      ),
                      margin: getMargin(
                        left: 4,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgStarDeepOrange50,
                      height: getSize(
                        30,
                      ),
                      width: getSize(
                        30,
                      ),
                      margin: getMargin(
                        left: 4,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgStarDeepOrange50,
                      height: getSize(
                        30,
                      ),
                      width: getSize(
                        30,
                      ),
                      margin: getMargin(
                        left: 4,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.maxFinite,
                child: Container(
                  width: getHorizontalSize(
                    358,
                  ),
                  margin: getMargin(
                    left: 2,
                    top: 28,
                  ),
                  padding: getPadding(
                    left: 29,
                    top: 22,
                    right: 29,
                    bottom: 22,
                  ),
                  decoration: AppDecoration.fillWhiteA700.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder15,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          bottom: 114,
                        ),
                        child: Text(
                          "msg_write_review".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRedHatDisplayMedium14Black90066
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
              ),
              CustomButton(
                height: getVerticalSize(
                  66,
                ),
                text: "lbl_submit".tr.toUpperCase(),
                margin: getMargin(
                  left: 2,
                  top: 65,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    top: 16,
                    bottom: 5,
                  ),
                  child: Text(
                    "lbl_skip".tr.toUpperCase(),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRedHatDisplaySemiBold16.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.32,
                      ),
                    ),
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
