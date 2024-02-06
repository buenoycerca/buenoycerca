import '../cart_v1_coupon_screen/widgets/listdishname_item_widget.dart';
import 'controller/cart_v1_coupon_controller.dart';
import 'models/listdishname_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_iconbutton.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_stack.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:buenoycerca/widgets/app_bar/custom_app_bar.dart';
import 'package:buenoycerca/widgets/custom_button.dart';

class CartV1CouponScreen extends GetWidget<CartV1CouponController> {
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
                    onTap: onTapArrowleft19),
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
                              itemCount: controller.cartV1CouponModelObj.value
                                  .listdishnameItemList.length,
                              itemBuilder: (context, index) {
                                ListdishnameItemModel model = controller
                                    .cartV1CouponModelObj
                                    .value
                                    .listdishnameItemList[index];
                                return ListdishnameItemWidget(model);
                              }))),
                      Spacer(),
                      Padding(
                          padding: getPadding(left: 1, right: 1),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    width: getHorizontalSize(253),
                                    padding: getPadding(
                                        left: 21,
                                        top: 15,
                                        right: 21,
                                        bottom: 15),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder15,
                                        image: DecorationImage(
                                            image: fs.Svg(
                                                ImageConstant.imgGroup1132),
                                            fit: BoxFit.cover)),
                                    child: Row(children: [
                                      CustomImageView(
                                          svgPath:
                                              ImageConstant.imgTrashGray400,
                                          height: getVerticalSize(15),
                                          width: getHorizontalSize(22),
                                          margin: getMargin(top: 4, bottom: 3)),
                                      Padding(
                                          padding: getPadding(left: 23, top: 4),
                                          child: Text("lbl_apply_coupon".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRedHatDisplayMedium14Gray400
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.28))))
                                    ])),
                                Container(
                                    padding: getPadding(
                                        left: 24,
                                        top: 15,
                                        right: 24,
                                        bottom: 15),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder15,
                                        image: DecorationImage(
                                            image: fs.Svg(
                                                ImageConstant.imgGroup443),
                                            fit: BoxFit.cover)),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 4),
                                              child: Text("lbl_apply2".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRedHatDisplayMedium14WhiteA700
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.28))))
                                        ]))
                              ])),
                      Padding(
                          padding: getPadding(left: 1, top: 41, right: 1),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(right: 2),
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
                                    padding: getPadding(top: 10),
                                    child:
                                        Divider(color: ColorConstant.gray400)),
                                Padding(
                                    padding: getPadding(top: 23, right: 2),
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
                                    padding: getPadding(top: 9),
                                    child:
                                        Divider(color: ColorConstant.gray400)),
                                Padding(
                                    padding: getPadding(top: 23, right: 1),
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
                          margin: getMargin(top: 53, bottom: 34))
                    ]))));
  }

  onTapArrowleft19() {
    Get.back();
  }
}
