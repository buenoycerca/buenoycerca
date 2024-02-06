import '../controller/search_filter_controller.dart';
import '../models/searchfilter_item_model.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';

// ignore: must_be_immutable
class SearchfilterItemWidget extends StatelessWidget {
  SearchfilterItemWidget(this.searchfilterItemModelObj);

  SearchfilterItemModel searchfilterItemModelObj;

  var controller = Get.find<SearchFilterController>();

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
            top: 12,
            right: 29,
            bottom: 12,
          ),
          decoration: AppDecoration.txtFillDeeporange50.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder9,
          ),
          child: Text(
            "lbl_recomended".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtRedHatDisplayMedium14DeeporangeA400.copyWith(
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
