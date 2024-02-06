import '../controller/notification_delivery_controller.dart';
import '../models/list139180foodpla_item_model.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';

// ignore: must_be_immutable
class List139180foodplaItemWidget extends StatelessWidget {
  List139180foodplaItemWidget(this.list139180foodplaItemModelObj);

  List139180foodplaItemModel list139180foodplaItemModelObj;

  var controller = Get.find<NotificationDeliveryController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 19,
        top: 11,
        right: 19,
        bottom: 11,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img139180foodpla,
            height: getVerticalSize(
              65,
            ),
            width: getHorizontalSize(
              64,
            ),
            margin: getMargin(
              left: 3,
              top: 1,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 8,
              bottom: 1,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "lbl_fried_fish".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRedHatDisplayBold18,
                ),
                Padding(
                  padding: getPadding(
                    top: 4,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          bottom: 13,
                        ),
                        child: Text(
                          "lbl_delivered".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRedHatDisplaySemiBold11Black900
                              .copyWith(
                            letterSpacing: getHorizontalSize(
                              0.22,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 116,
                          top: 10,
                        ),
                        child: Text(
                          "lbl_yesterday".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRedHatDisplayMedium13,
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
    );
  }
}
