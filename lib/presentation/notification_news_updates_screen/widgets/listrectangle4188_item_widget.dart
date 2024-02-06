import '../controller/notification_news_updates_controller.dart';
import '../models/listrectangle4188_item_model.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Listrectangle4188ItemWidget extends StatelessWidget {
  Listrectangle4188ItemWidget(this.listrectangle4188ItemModelObj);

  Listrectangle4188ItemModel listrectangle4188ItemModelObj;

  var controller = Get.find<NotificationNewsUpdatesController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        96,
      ),
      width: getHorizontalSize(
        357,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: getVerticalSize(
                95,
              ),
              width: getHorizontalSize(
                344,
              ),
              decoration: BoxDecoration(
                color: ColorConstant.whiteA700,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    12,
                  ),
                ),
                boxShadow: [
                  BoxShadow(
                    color: ColorConstant.gray80007,
                    spreadRadius: getHorizontalSize(
                      2,
                    ),
                    blurRadius: getHorizontalSize(
                      2,
                    ),
                    offset: Offset(
                      0,
                      20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: getMargin(
                top: 1,
              ),
              padding: getPadding(
                top: 11,
                bottom: 11,
              ),
              decoration: AppDecoration.fillWhiteA700.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomIconButton(
                    height: 50,
                    width: 50,
                    margin: getMargin(
                      left: 18,
                      top: 23,
                      bottom: 22,
                    ),
                    shape: IconButtonShape.RoundedBorder10,
                    padding: IconButtonPadding.PaddingAll9,
                    child: CustomImageView(
                      svgPath: ImageConstant.imgTelevisionDeepOrangeA400,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 17,
                      top: 14,
                      right: 15,
                      bottom: 11,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "msg_you_earned_20_points".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRedHatDisplayBold18,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 5,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: getHorizontalSize(
                                  171,
                                ),
                                margin: getMargin(
                                  bottom: 9,
                                ),
                                child: Text(
                                  "msg_earn_80_points_and".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtRedHatDisplaySemiBold11Gray5003
                                      .copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.22,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 44,
                                  top: 25,
                                ),
                                child: Text(
                                  "lbl_3_09_pm".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRedHatDisplayMedium10
                                      .copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.2,
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
        ],
      ),
    );
  }
}
