import '../cart_screen/widgets/cart_item_widget.dart';
import 'controller/cart_controller.dart';
import 'models/cart_item_model.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_stack_1.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:buenoycerca/widgets/app_bar/custom_app_bar.dart';
import 'package:buenoycerca/widgets/custom_button.dart';
import 'package:buenoycerca/widgets/custom_drop_down.dart';

class CartScreen extends GetWidget<CartController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray100,
        appBar: CustomAppBar(
          height: getVerticalSize(
            83,
          ),
          title: Padding(
            padding: getPadding(
              left: 35,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomDropDown(
                  width: getHorizontalSize(
                    108,
                  ),
                  focusNode: FocusNode(),
                  icon: Container(
                    margin: getMargin(
                      left: 1,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgArrowdownDeepOrangeA40018x18,
                    ),
                  ),
                  hintText: "lbl_your_location".tr,
                  margin: getMargin(
                    right: 36,
                  ),
                  variant: DropDownVariant.None,
                  fontStyle: DropDownFontStyle.RedHatDisplayRegular14,
                  alignment: Alignment.centerLeft,
                  items: controller.cartModelObj.value.dropdownItemList,
                  onChanged: (value) {
                    controller.onSelected(value);
                  },
                ),
                AppbarSubtitle3(
                  text: "msg_karachi_pakistan".tr,
                  margin: getMargin(
                    top: 3,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            AppbarStack1(
              margin: getMargin(
                left: 35,
                top: 3,
                right: 35,
                bottom: 3,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 34,
            top: 42,
            right: 34,
            bottom: 42,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "lbl_added_items".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRedHatDisplayBold25Black900.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.5,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 25,
                ),
                child: Obx(
                  () => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: getVerticalSize(
                          20,
                        ),
                      );
                    },
                    itemCount:
                        controller.cartModelObj.value.cartItemList.length,
                    itemBuilder: (context, index) {
                      CartItemModel model =
                          controller.cartModelObj.value.cartItemList[index];
                      return CartItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
              Spacer(),
              CustomButton(
                height: getVerticalSize(
                  66,
                ),
                text: "lbl_go_to_cart".tr.toUpperCase(),
                margin: getMargin(
                  left: 1,
                  bottom: 22,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          decoration: AppDecoration.fillGray300cc.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL15,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: double.maxFinite,
                margin: getMargin(
                  top: 11,
                ),
                padding: getPadding(
                  top: 27,
                  bottom: 27,
                ),
                decoration: AppDecoration.fillWhiteA700.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgMegaphone,
                      height: getSize(
                        32,
                      ),
                      width: getSize(
                        32,
                      ),
                      margin: getMargin(
                        top: 6,
                        bottom: 24,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgMap,
                      height: getSize(
                        32,
                      ),
                      width: getSize(
                        32,
                      ),
                      margin: getMargin(
                        top: 6,
                        bottom: 24,
                      ),
                    ),
                    Container(
                      height: getVerticalSize(
                        44,
                      ),
                      width: getHorizontalSize(
                        108,
                      ),
                      margin: getMargin(
                        bottom: 18,
                      ),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: getHorizontalSize(
                                106,
                              ),
                              margin: getMargin(
                                right: 2,
                              ),
                              padding: getPadding(
                                left: 18,
                                top: 6,
                                right: 18,
                                bottom: 6,
                              ),
                              decoration:
                                  AppDecoration.fillDeeporange50.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder22,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomImageView(
                                    svgPath:
                                        ImageConstant.imgCartDeepOrangeA400,
                                    height: getSize(
                                      32,
                                    ),
                                    width: getSize(
                                      32,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 6,
                                      bottom: 6,
                                    ),
                                    child: Text(
                                      "lbl_cart".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtRedHatDisplayMedium14DeeporangeA400
                                          .copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.28,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              width: getSize(
                                16,
                              ),
                              margin: getMargin(
                                top: 1,
                              ),
                              padding: getPadding(
                                left: 6,
                                top: 1,
                                right: 6,
                                bottom: 1,
                              ),
                              decoration:
                                  AppDecoration.txtOutlineWhiteA700.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.txtRoundedBorder9,
                              ),
                              child: Text(
                                "lbl_1".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRedHatDisplayBold11,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgUserGray400,
                      height: getSize(
                        32,
                      ),
                      width: getSize(
                        32,
                      ),
                      margin: getMargin(
                        top: 6,
                        bottom: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
