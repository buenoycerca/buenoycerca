import '../favourite_vone_page/widgets/favouritevone_item_widget.dart';
import 'controller/favourite_vone_controller.dart';
import 'models/favourite_vone_model.dart';
import 'models/favouritevone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_dropdown.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_stack.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:buenoycerca/widgets/app_bar/custom_app_bar.dart';
import 'package:buenoycerca/widgets/custom_icon_button.dart';
import 'package:buenoycerca/widgets/custom_search_view.dart';
import 'package:buenoycerca/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class FavouriteVonePage extends StatelessWidget {
  FavouriteVoneController controller =
      Get.put(FavouriteVoneController(FavouriteVoneModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.gray100,
        appBar: CustomAppBar(
          height: getVerticalSize(
            83,
          ),
          title: Padding(
            padding: getPadding(
              left: 34,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppbarDropdown(
                  hintText: "lbl_your_location".tr,
                  items:
                      controller.favouriteVoneModelObj.value.dropdownItemList,
                  onTap: (value) {
                    controller.onSelected(value);
                  },
                  margin: getMargin(
                    right: 32,
                  ),
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
            AppbarStack(
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 35,
                  top: 44,
                  right: 34,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: CustomSearchView(
                        focusNode: FocusNode(),
                        controller: controller.componentNineteenController,
                        hintText: "lbl_search".tr,
                        prefix: Container(
                          margin: getMargin(
                            left: 23,
                            top: 21,
                            right: 10,
                            bottom: 21,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgSearch,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: getVerticalSize(
                            66,
                          ),
                        ),
                      ),
                    ),
                    CustomIconButton(
                      height: 66,
                      width: 68,
                      margin: getMargin(
                        left: 13,
                      ),
                      variant: IconButtonVariant.FillDeeporangeA400,
                      padding: IconButtonPadding.PaddingAll17,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgSettingsWhiteA700,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: getPadding(
                    left: 35,
                    top: 40,
                  ),
                  child: IntrinsicWidth(
                    child: Container(
                      height: getVerticalSize(
                        53,
                      ),
                      width: getHorizontalSize(
                        393,
                      ),
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              margin: getMargin(
                                right: 96,
                              ),
                              padding: getPadding(
                                left: 13,
                                top: 17,
                                right: 13,
                                bottom: 17,
                              ),
                              decoration: AppDecoration.fillAmber100.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder15,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_pizzas".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRedHatDisplayBold13Amber700
                                        .copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.26,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              padding: getPadding(
                                left: 13,
                                top: 16,
                                right: 13,
                                bottom: 16,
                              ),
                              decoration:
                                  AppDecoration.fillDeeporange50.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder15,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 2,
                                    ),
                                    child: Text(
                                      "lbl_burgers".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRedHatDisplayBold13
                                          .copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.26,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: getPadding(
                                left: 35,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgBurger153x106,
                                    height: getVerticalSize(
                                      53,
                                    ),
                                    width: getHorizontalSize(
                                      106,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        15,
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgPizza153x125,
                                    height: getVerticalSize(
                                      53,
                                    ),
                                    width: getHorizontalSize(
                                      125,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        15,
                                      ),
                                    ),
                                    margin: getMargin(
                                      left: 31,
                                    ),
                                  ),
                                  Spacer(),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgCake153x29,
                                    height: getVerticalSize(
                                      53,
                                    ),
                                    width: getHorizontalSize(
                                      29,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomTextFormField(
                            width: getHorizontalSize(
                              141,
                            ),
                            focusNode: FocusNode(),
                            controller: controller.group229Controller,
                            hintText: "lbl_cakes".tr,
                            variant: TextFormFieldVariant.FillIndigo10066,
                            padding: TextFormFieldPadding.PaddingT17,
                            fontStyle:
                                TextFormFieldFontStyle.RedHatDisplayBold13,
                            textInputAction: TextInputAction.done,
                            alignment: Alignment.centerRight,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 35,
                    top: 36,
                  ),
                  child: Text(
                    "lbl_my_favourites".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRedHatDisplayBold25Black900.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.5,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 35,
                  top: 16,
                  right: 35,
                ),
                child: Obx(
                  () => GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: getVerticalSize(
                        224,
                      ),
                      crossAxisCount: 2,
                      mainAxisSpacing: getHorizontalSize(
                        19,
                      ),
                      crossAxisSpacing: getHorizontalSize(
                        19,
                      ),
                    ),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller.favouriteVoneModelObj.value
                        .favouritevoneItemList.length,
                    itemBuilder: (context, index) {
                      FavouritevoneItemModel model = controller
                          .favouriteVoneModelObj
                          .value
                          .favouritevoneItemList[index];
                      return FavouritevoneItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
