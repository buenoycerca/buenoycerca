import '../controller/address_controller.dart';
import '../models/address_item_model.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AddressItemWidget extends StatelessWidget {
  AddressItemWidget(this.addressItemModelObj);

  AddressItemModel addressItemModelObj;

  var controller = Get.find<AddressController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 29,
        top: 17,
        right: 29,
        bottom: 17,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        children: [
          CustomIconButton(
            height: 46,
            width: 46,
            margin: getMargin(
              top: 9,
              bottom: 9,
            ),
            shape: IconButtonShape.CircleBorder25,
            child: CustomImageView(
              svgPath: ImageConstant.imgBookmarkDeepOrangeA40050x50,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "lbl_home".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRedHatDisplayBold18,
                ),
                Padding(
                  padding: getPadding(
                    top: 2,
                  ),
                  child: Text(
                    "msg_horizenal_road_stree".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRedHatDisplayMedium14.copyWith(
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
