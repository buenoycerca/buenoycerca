import 'controller/profile_controller.dart';
import 'models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {
  ProfileController controller = Get.put(ProfileController(ProfileModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray100,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.bg,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: getPadding(
                  left: 25,
                  top: 47,
                  right: 25,
                  bottom: 47,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: getVerticalSize(
                        112,
                      ),
                      width: getHorizontalSize(
                        106,
                      ),
                      margin: getMargin(
                        left: 128,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgUnsplashwnolnjo7ts8,
                            height: getVerticalSize(
                              112,
                            ),
                            width: getHorizontalSize(
                              105,
                            ),
                            radius: BorderRadius.circular(
                              getHorizontalSize(
                                56,
                              ),
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: getSize(
                                22,
                              ),
                              width: getSize(
                                22,
                              ),
                              margin: getMargin(
                                bottom: 10,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.lightGreenA700,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    11,
                                  ),
                                ),
                                border: Border.all(
                                  color: ColorConstant.whiteA700,
                                  width: getHorizontalSize(
                                    4,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          top: 10,
                        ),
                        child: Text(
                          "lbl_charlie_greer".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style:
                              AppStyle.txtRedHatDisplayBold25Black900.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.5,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          top: 2,
                        ),
                        child: Text(
                          "lbl_charlieg".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style:
                              AppStyle.txtRedHatDisplayMedium16Gray500.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.32,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 10,
                        top: 57,
                        right: 3,
                      ),
                      child: Row(
                        children: [
                          CustomIconButton(
                            height: 50,
                            width: 50,
                            shape: IconButtonShape.RoundedBorder10,
                            child: CustomImageView(
                              svgPath: ImageConstant.imgSettingsDeepOrangeA400,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 19,
                              top: 12,
                              bottom: 13,
                            ),
                            child: Text(
                              "lbl_preferences".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.txtRedHatDisplaySemiBold18.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.36,
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          CustomImageView(
                            svgPath: ImageConstant.imgArrowright,
                            height: getSize(
                              30,
                            ),
                            width: getSize(
                              30,
                            ),
                            margin: getMargin(
                              top: 10,
                              bottom: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 10,
                        top: 30,
                        right: 1,
                      ),
                      child: Row(
                        children: [
                          CustomIconButton(
                            height: 50,
                            width: 50,
                            shape: IconButtonShape.RoundedBorder10,
                            child: CustomImageView(
                              svgPath: ImageConstant.imgLockDeepOrangeA400,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 21,
                              top: 14,
                              bottom: 11,
                            ),
                            child: Text(
                              "msg_account_security".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.txtRedHatDisplaySemiBold18.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.36,
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          CustomImageView(
                            svgPath: ImageConstant.imgArrowright,
                            height: getSize(
                              30,
                            ),
                            width: getSize(
                              30,
                            ),
                            margin: getMargin(
                              top: 10,
                              bottom: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgGroup34877,
                      height: getVerticalSize(
                        8,
                      ),
                      width: getHorizontalSize(
                        211,
                      ),
                      alignment: Alignment.center,
                      margin: getMargin(
                        top: 4,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 81,
                        top: 14,
                      ),
                      child: Text(
                        "lbl_excellent".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style:
                            AppStyle.txtRedHatDisplayMedium16Gray500.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.32,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 10,
                        top: 32,
                      ),
                      child: Row(
                        children: [
                          CustomIconButton(
                            height: 50,
                            width: 50,
                            shape: IconButtonShape.RoundedBorder10,
                            child: CustomImageView(
                              svgPath: ImageConstant.imgQuestion,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 22,
                              top: 14,
                              bottom: 11,
                            ),
                            child: Text(
                              "msg_customer_support".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.txtRedHatDisplaySemiBold18.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.36,
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          CustomImageView(
                            svgPath: ImageConstant.imgArrowright,
                            height: getSize(
                              30,
                            ),
                            width: getSize(
                              30,
                            ),
                            margin: getMargin(
                              top: 10,
                              bottom: 9,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 10,
                        top: 30,
                        bottom: 5,
                      ),
                      child: Row(
                        children: [
                          CustomIconButton(
                            height: 50,
                            width: 50,
                            shape: IconButtonShape.RoundedBorder10,
                            child: CustomImageView(
                              svgPath: ImageConstant.imgShare,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 22,
                              top: 14,
                              bottom: 11,
                            ),
                            child: Text(
                              "lbl_logout".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.txtRedHatDisplaySemiBold18.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.36,
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
            ],
          ),
        ),
      ),
    );
  }
}
