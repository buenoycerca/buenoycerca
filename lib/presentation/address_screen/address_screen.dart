import '../address_screen/widgets/address_item_widget.dart';
import 'controller/address_controller.dart';
import 'models/address_item_model.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_iconbutton.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_stack.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:buenoycerca/widgets/app_bar/custom_app_bar.dart';
import 'package:buenoycerca/widgets/custom_button.dart';

class AddressScreen extends GetWidget<AddressController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                height: getVerticalSize(82),
                leadingWidth: 85,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 35, top: 2, bottom: 4),
                    onTap: onTapArrowleft23),
                centerTitle: true,
                title: AppbarSubtitle2(text: "lbl_address".tr),
                actions: [
                  AppbarStack(
                      margin: getMargin(left: 35, top: 4, right: 35, bottom: 2))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 35, top: 32, right: 35, bottom: 32),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("lbl_deliver_to".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRedHatDisplayBold25Black900
                              .copyWith(letterSpacing: getHorizontalSize(0.5))),
                      Padding(
                          padding: getPadding(top: 29),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(30));
                              },
                              itemCount: controller
                                  .addressModelObj.value.addressItemList.length,
                              itemBuilder: (context, index) {
                                AddressItemModel model = controller
                                    .addressModelObj
                                    .value
                                    .addressItemList[index];
                                return AddressItemWidget(model);
                              }))),
                      Spacer(),
                      CustomButton(
                          height: getVerticalSize(66),
                          text: "lbl_payment_method2".tr.toUpperCase(),
                          margin: getMargin(bottom: 66))
                    ]))));
  }

  onTapArrowleft23() {
    Get.back();
  }
}
