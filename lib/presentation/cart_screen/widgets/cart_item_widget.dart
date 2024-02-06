import '../controller/cart_controller.dart';
import '../models/cart_item_model.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class CartItemWidget extends StatelessWidget {
  CartItemWidget(this.cartItemModelObj);

  CartItemModel cartItemModelObj;

  var controller = Get.find<CartController>();

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
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgComputer,
                height: getSize(
                  24,
                ),
                width: getSize(
                  24,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 7,
                ),
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
              CustomIconButton(
                height: 24,
                width: 24,
                margin: getMargin(
                  top: 8,
                ),
                variant: IconButtonVariant.FillDeeporangeA400,
                shape: IconButtonShape.RoundedBorder7,
                padding: IconButtonPadding.PaddingAll9,
                child: CustomImageView(
                  svgPath: ImageConstant.imgPlusWhiteA700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
