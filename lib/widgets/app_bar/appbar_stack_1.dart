import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';

// ignore: must_be_immutable
class AppbarStack1 extends StatelessWidget {
  AppbarStack1({this.margin, this.onTap});

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          color: ColorConstant.deepOrange50,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder15,
          ),
          child: Container(
            height: getSize(
              50,
            ),
            width: getSize(
              50,
            ),
            decoration: AppDecoration.fillDeeporange50.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder15,
            ),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: getPadding(
                      left: 32,
                      top: 14,
                      right: 15,
                      bottom: 25,
                    ),
                    child: Text(
                      "lbl_1".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRedHatDisplayBold75,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: getSize(
                      13,
                    ),
                    width: getSize(
                      13,
                    ),
                    margin: getMargin(
                      left: 27,
                      top: 13,
                      right: 10,
                      bottom: 24,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.deepOrangeA400,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          6,
                        ),
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgNotification,
                  height: getVerticalSize(
                    24,
                  ),
                  width: getHorizontalSize(
                    21,
                  ),
                  alignment: Alignment.center,
                  margin: getMargin(
                    left: 14,
                    top: 12,
                    right: 14,
                    bottom: 13,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: getPadding(
                      left: 32,
                      top: 14,
                      right: 15,
                      bottom: 25,
                    ),
                    child: Text(
                      "lbl_1".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRedHatDisplayBold75,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
