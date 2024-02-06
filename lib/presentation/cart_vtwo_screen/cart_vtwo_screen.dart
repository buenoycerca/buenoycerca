import '../cart_vtwo_screen/widgets/cartvtwo_item_widget.dart';
import 'controller/cart_vtwo_controller.dart';
import 'models/cartvtwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_iconbutton.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_stack.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:buenoycerca/widgets/app_bar/custom_app_bar.dart';
import 'package:buenoycerca/widgets/custom_button.dart';

class CartVtwoScreen extends GetWidget<CartVtwoController> {
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
                    onTap: onTapArrowleft20),
                centerTitle: true,
                title: AppbarSubtitle2(text: "lbl_your_cart".tr),
                actions: [
                  AppbarStack(
                      margin: getMargin(left: 35, top: 4, right: 35, bottom: 2))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 34, top: 37, right: 34, bottom: 37),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 1),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(20));
                              },
                              itemCount: controller.cartVtwoModelObj.value
                                  .cartvtwoItemList.length,
                              itemBuilder: (context, index) {
                                CartvtwoItemModel model = controller
                                    .cartVtwoModelObj
                                    .value
                                    .cartvtwoItemList[index];
                                return CartvtwoItemWidget(model);
                              }))),
                      Spacer(),
                      Padding(
                          padding: getPadding(left: 1, right: 2),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(right: 1),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("lbl_subtotal".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRedHatDisplayMedium16Gray50099
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.32))),
                                          Text("lbl_58_96".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRedHatDisplayMedium16Gray50099
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.32)))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 24, right: 1),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("lbl_delivery".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRedHatDisplayMedium16Gray50099
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.32)))),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("lbl_3_59".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRedHatDisplayMedium16Gray50099
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.32))))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 22),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("lbl_total".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRedHatDisplayMedium18Black900
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.36))),
                                          Text("lbl_62_55".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRedHatDisplayMedium18Black900
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.36)))
                                        ]))
                              ])),
                      CustomButton(
                          height: getVerticalSize(66),
                          text: "lbl_review_payment".tr.toUpperCase(),
                          margin: getMargin(top: 41, bottom: 34))
                    ]))));
  }

  onTapArrowleft20() {
    Get.back();
  }
}
