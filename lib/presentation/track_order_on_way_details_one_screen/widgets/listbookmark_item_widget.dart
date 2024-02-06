import '../controller/track_order_on_way_details_one_controller.dart';
import '../models/listbookmark_item_model.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListbookmarkItemWidget extends StatelessWidget {
  ListbookmarkItemWidget(this.listbookmarkItemModelObj);

  ListbookmarkItemModel listbookmarkItemModelObj;

  var controller = Get.find<TrackOrderOnWayDetailsOneController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomIconButton(
              height: 32,
              width: 32,
              padding: IconButtonPadding.PaddingAll4,
              child: CustomImageView(
                svgPath: ImageConstant.imgBookmarkDeepOrangeA40050x50,
              ),
            ),
            SizedBox(
              width: getHorizontalSize(
                1,
              ),
              child: Divider(
                color: ColorConstant.deepOrangeA40099,
              ),
            ),
          ],
        ),
        Padding(
          padding: getPadding(
            left: 22,
            bottom: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "lbl_your_address".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRedHatDisplayMedium10Black90066.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.2,
                  ),
                ),
              ),
              Text(
                "msg_horizenal_road_stree".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRedHatDisplayMedium10Black900.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.2,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
