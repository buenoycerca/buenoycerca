import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/widgets/custom_drop_down.dart';

// ignore: must_be_immutable
class AppbarDropdown extends StatelessWidget {
  AppbarDropdown(
      {required this.hintText,
      required this.items,
      required this.onTap,
      this.margin});

  String? hintText;

  List<SelectionPopupModel> items;

  Function(SelectionPopupModel) onTap;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomDropDown(
        width: getHorizontalSize(
          112,
        ),
        focusNode: FocusNode(),
        icon: Container(
          margin: getMargin(
            left: 2,
          ),
          child: CustomImageView(
            svgPath: ImageConstant.imgArrowdownDeepOrangeA40018x18,
          ),
        ),
        hintText: "lbl_your_location".tr,
        variant: DropDownVariant.None,
        items: items,
        onChanged: (value) {
          onTap(value);
        },
      ),
    );
  }
}
