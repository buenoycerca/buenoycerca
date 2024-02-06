import '../controller/search_filter_active_controller.dart';
import '../models/listframe_item_model.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';

// ignore: must_be_immutable
class ListframeItemWidget extends StatelessWidget {
  ListframeItemWidget(this.listframeItemModelObj);

  ListframeItemModel listframeItemModelObj;

  var controller = Get.find<SearchFilterActiveController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: getHorizontalSize(
            148,
          ),
          margin: getMargin(
            right: 16,
          ),
          padding: getPadding(
            left: 29,
            top: 11,
            right: 29,
            bottom: 11,
          ),
          decoration: AppDecoration.txtFillDeeporangeA400.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder9,
          ),
          child: Text(
            "lbl_recomended".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtRedHatDisplayMedium14WhiteA700.copyWith(
              letterSpacing: getHorizontalSize(
                0.28,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
