import '../controller/forget_password_empty_controller.dart';
import '../models/listarrowdown_item_model.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListarrowdownItemWidget extends StatelessWidget {
  ListarrowdownItemWidget(this.listarrowdownItemModelObj);

  ListarrowdownItemModel listarrowdownItemModelObj;

  var controller = Get.find<ForgetPasswordEmptyController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 17,
        top: 14,
        right: 17,
        bottom: 14,
      ),
      decoration: AppDecoration.outlineBlack9000c.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        children: [
          CustomIconButton(
            height: 50,
            width: 50,
            shape: IconButtonShape.CircleBorder25,
            child: CustomImageView(
              svgPath: ImageConstant.imgArrowdownDeepOrangeA400,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 18,
              top: 3,
              bottom: 3,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "lbl_email".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRedHatDisplaySemiBold18,
                ),
                Padding(
                  padding: getPadding(
                    top: 1,
                  ),
                  child: Text(
                    "msg_code_send_to_your".tr,
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
