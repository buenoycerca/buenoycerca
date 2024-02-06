import 'controller/messages_controller.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:buenoycerca/widgets/app_bar/custom_app_bar.dart';
import 'package:buenoycerca/widgets/custom_button.dart';
import 'package:buenoycerca/widgets/custom_icon_button.dart';

class MessagesScreen extends GetWidget<MessagesController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray100,
        appBar: CustomAppBar(
          height: getVerticalSize(
            81,
          ),
          leadingWidth: 147,
          leading: CustomImageView(
            imagePath: ImageConstant.imgUnsplashwnolnjo7ts851x49,
            height: getVerticalSize(
              51,
            ),
            width: getHorizontalSize(
              49,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                25,
              ),
            ),
            margin: getMargin(
              right: 98,
            ),
          ),
          title: Container(
            margin: getMargin(
              left: 38,
              bottom: 1,
            ),
            decoration: AppDecoration.column15,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 22,
                  ),
                  child: Text(
                    "lbl_charlie".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style:
                        AppStyle.txtRedHatDisplayBold25DeeporangeA400.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.5,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 23,
                      right: 43,
                    ),
                    child: Text(
                      "lbl_online".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRedHatDisplayMedium14.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.28,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: getSize(
                      11,
                    ),
                    width: getSize(
                      11,
                    ),
                    margin: getMargin(
                      right: 98,
                      bottom: 1,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.lightGreenA700,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          5,
                        ),
                      ),
                      border: Border.all(
                        color: ColorConstant.whiteA700,
                        width: getHorizontalSize(
                          2,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            AppbarIconbutton1(
              svgPath: ImageConstant.imgCallDeepOrangeA400,
              margin: getMargin(
                left: 35,
                top: 4,
                right: 3,
              ),
            ),
            AppbarIconbutton1(
              svgPath: ImageConstant.imgVideocamera,
              margin: getMargin(
                left: 10,
                top: 4,
                right: 38,
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
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: getMargin(
                  left: 106,
                  top: 24,
                  right: 1,
                ),
                padding: getPadding(
                  left: 29,
                  top: 19,
                  right: 29,
                  bottom: 19,
                ),
                decoration: AppDecoration.fillGray300cc.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder15,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: getHorizontalSize(
                        191,
                      ),
                      margin: getMargin(
                        top: 3,
                      ),
                      child: Text(
                        "msg_hi_my_order_is".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style:
                            AppStyle.txtRedHatDisplayMedium14Black9001.copyWith(
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
                  top: 14,
                ),
                child: Text(
                  "lbl_10_52".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRedHatDisplayMedium12Gray500.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.24,
                    ),
                  ),
                ),
              ),
              CustomButton(
                height: getVerticalSize(
                  60,
                ),
                width: getHorizontalSize(
                  224,
                ),
                text: "msg_order_is_on_the".tr,
                margin: getMargin(
                  left: 1,
                  top: 23,
                ),
                padding: ButtonPadding.PaddingT18,
                fontStyle: ButtonFontStyle.RedHatDisplayMedium14Gray300cc,
                alignment: Alignment.centerLeft,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 1,
                    top: 14,
                  ),
                  child: Text(
                    "lbl_10_53".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRedHatDisplayMedium12Gray500.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.24,
                      ),
                    ),
                  ),
                ),
              ),
              CustomButton(
                height: getVerticalSize(
                  60,
                ),
                width: getHorizontalSize(
                  177,
                ),
                text: "msg_okay_i_m_waiting".tr,
                margin: getMargin(
                  top: 22,
                  right: 1,
                ),
                variant: ButtonVariant.FillGray300cc,
                padding: ButtonPadding.PaddingAll18,
                fontStyle: ButtonFontStyle.RedHatDisplayMedium14Black900,
              ),
              Padding(
                padding: getPadding(
                  top: 14,
                  right: 1,
                ),
                child: Text(
                  "lbl_10_53".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRedHatDisplayMedium12Gray500.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.24,
                    ),
                  ),
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIconButton(
                    height: 60,
                    width: 60,
                    variant: IconButtonVariant.FillDeeporangeA400,
                    child: CustomImageView(
                      svgPath: ImageConstant.imgMicrophone,
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      left: 15,
                    ),
                    padding: getPadding(
                      left: 17,
                      top: 14,
                      right: 17,
                      bottom: 14,
                    ),
                    decoration: AppDecoration.fillWhiteA700.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 6,
                            bottom: 6,
                          ),
                          child: Text(
                            "lbl_write_now".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRedHatDisplayMedium14Gray400
                                .copyWith(
                              letterSpacing: getHorizontalSize(
                                0.28,
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgSend,
                          height: getSize(
                            32,
                          ),
                          width: getSize(
                            32,
                          ),
                          margin: getMargin(
                            left: 138,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
