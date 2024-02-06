import '../controller/cart_vone_controller.dart';
import '../models/cartvone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';

// ignore: must_be_immutable
class CartvoneItemWidget extends StatelessWidget {
  CartvoneItemWidget(this.cartvoneItemModelObj);

  CartvoneItemModel cartvoneItemModelObj;

  var controller = Get.find<CartVoneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 16,
        top: 12,
        right: 16,
        bottom: 12,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFoodimage,
            height: getSize(
              82,
            ),
            width: getSize(
              82,
            ),
            margin: getMargin(
              top: 2,
              bottom: 1,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 16,
              top: 16,
              bottom: 17,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "lbl_cream_chicken".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRedHatDisplayBold18,
                ),
                Padding(
                  padding: getPadding(
                    top: 4,
                  ),
                  child: Text(
                    "lbl_12_99".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRedHatDisplayMedium16Gray500.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.32,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: getVerticalSize(
              84,
            ),
            width: getHorizontalSize(
              24,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgInfo,
                  height: getVerticalSize(
                    84,
                  ),
                  width: getHorizontalSize(
                    24,
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "lbl_03".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRedHatDisplayMedium14Black900.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.28,
                      ),
                    ),
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
