import '../controller/reset_active_one_controller.dart';
import '../models/listlock_item_model.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';

// ignore: must_be_immutable
class ListlockItemWidget extends StatelessWidget {
  ListlockItemWidget(this.listlockItemModelObj);

  ListlockItemModel listlockItemModelObj;

  var controller = Get.find<ResetActiveOneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 18,
        top: 21,
        right: 18,
        bottom: 21,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgLock,
            height: getSize(
              24,
            ),
            width: getSize(
              24,
            ),
          ),
          CustomImageView(
            svgPath: ImageConstant.imgDots,
            height: getVerticalSize(
              9,
            ),
            width: getHorizontalSize(
              117,
            ),
            margin: getMargin(
              left: 20,
              top: 8,
              bottom: 7,
            ),
          ),
          Spacer(),
          CustomImageView(
            svgPath: ImageConstant.imgEye,
            height: getSize(
              24,
            ),
            width: getSize(
              24,
            ),
            margin: getMargin(
              right: 9,
            ),
          ),
        ],
      ),
    );
  }
}
