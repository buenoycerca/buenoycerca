import '../home_vtwo_screen/widgets/homevtwo_item_widget.dart';
import 'controller/home_vtwo_controller.dart';
import 'models/homevtwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/home_vone_page/home_vone_page.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_dropdown.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_stack.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:buenoycerca/widgets/app_bar/custom_app_bar.dart';
import 'package:buenoycerca/widgets/custom_bottom_bar.dart';
import 'package:buenoycerca/widgets/custom_button.dart';
import 'package:buenoycerca/widgets/custom_icon_button.dart';
import 'package:buenoycerca/widgets/custom_search_view.dart';
import 'package:buenoycerca/widgets/custom_text_form_field.dart';

class HomeVtwoScreen extends GetWidget<HomeVtwoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.gray100,
        appBar: CustomAppBar(
          height: getVerticalSize(
            80,
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
                  items: controller.homeVtwoModelObj.value.dropdownItemList,
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
                right: 35,
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: getPadding(
                left: 35,
                top: 47,
                bottom: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      right: 34,
                    ),
                    child: Row(
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
                  Container(
                    height: getVerticalSize(
                      151,
                    ),
                    width: getHorizontalSize(
                      358,
                    ),
                    margin: getMargin(
                      top: 41,
                    ),
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgUnsplashagjp08hbyy151x358,
                          height: getVerticalSize(
                            151,
                          ),
                          width: getHorizontalSize(
                            358,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              15,
                            ),
                          ),
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: getPadding(
                              left: 29,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: getHorizontalSize(
                                    130,
                                  ),
                                  child: Text(
                                    "msg_breakfast_best_deals".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRedHatDisplayBold25
                                        .copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.5,
                                      ),
                                    ),
                                  ),
                                ),
                                CustomButton(
                                  height: getVerticalSize(
                                    36,
                                  ),
                                  width: getHorizontalSize(
                                    103,
                                  ),
                                  text: "lbl_upto_40_off".tr,
                                  margin: getMargin(
                                    top: 7,
                                  ),
                                  shape: ButtonShape.CircleBorder18,
                                  padding: ButtonPadding.PaddingAll10,
                                  fontStyle:
                                      ButtonFontStyle.RedHatDisplaySemiBold11,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: getPadding(
                      top: 38,
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
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder15,
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
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder15,
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
                              controller: controller.group297Controller,
                              hintText: "lbl_cakes".tr,
                              variant: TextFormFieldVariant.FillIndigoA20019,
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
                  Padding(
                    padding: getPadding(
                      top: 41,
                    ),
                    child: Text(
                      "lbl_trending_now".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRedHatDisplayBold25Black900.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.5,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      303,
                    ),
                    child: Obx(
                      () => ListView.separated(
                        padding: getPadding(
                          top: 22,
                        ),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: getVerticalSize(
                              8,
                            ),
                          );
                        },
                        itemCount: controller
                            .homeVtwoModelObj.value.homevtwoItemList.length,
                        itemBuilder: (context, index) {
                          HomevtwoItemModel model = controller
                              .homeVtwoModelObj.value.homevtwoItemList[index];
                          return HomevtwoItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 36,
                    ),
                    child: Text(
                      "msg_restaurants_near".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRedHatDisplayBold25Black900.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.5,
                        ),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: getPadding(
                      top: 25,
                    ),
                    child: IntrinsicWidth(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: getVerticalSize(
                              273,
                            ),
                            width: getHorizontalSize(
                              299,
                            ),
                            child: Stack(
                              alignment: Alignment.topLeft,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: getVerticalSize(
                                      263,
                                    ),
                                    width: getHorizontalSize(
                                      289,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray300Cc,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          15,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    decoration:
                                        AppDecoration.fillWhiteA700.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder15,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: getVerticalSize(
                                            138,
                                          ),
                                          width: getHorizontalSize(
                                            289,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgUnsplashyhswy6uqvk,
                                                height: getVerticalSize(
                                                  138,
                                                ),
                                                width: getHorizontalSize(
                                                  289,
                                                ),
                                                radius: BorderRadius.only(
                                                  topLeft: Radius.circular(
                                                    getHorizontalSize(
                                                      15,
                                                    ),
                                                  ),
                                                  topRight: Radius.circular(
                                                    getHorizontalSize(
                                                      15,
                                                    ),
                                                  ),
                                                ),
                                                alignment: Alignment.center,
                                              ),
                                              Align(
                                                alignment: Alignment.topRight,
                                                child: Container(
                                                  height: getSize(
                                                    45,
                                                  ),
                                                  width: getSize(
                                                    45,
                                                  ),
                                                  margin: getMargin(
                                                    top: 15,
                                                    right: 20,
                                                  ),
                                                  child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgBookmark,
                                                        height: getSize(
                                                          45,
                                                        ),
                                                        width: getSize(
                                                          45,
                                                        ),
                                                        alignment:
                                                            Alignment.center,
                                                      ),
                                                      CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgFavorite,
                                                        height: getSize(
                                                          32,
                                                        ),
                                                        width: getSize(
                                                          32,
                                                        ),
                                                        alignment:
                                                            Alignment.center,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 19,
                                            top: 13,
                                          ),
                                          child: Text(
                                            "lbl_the_steak_house".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtRedHatDisplayBold20,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 19,
                                            top: 9,
                                          ),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: getPadding(
                                                  bottom: 2,
                                                ),
                                                child: Text(
                                                  "lbl_15min".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRedHatDisplayMedium14
                                                      .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                      0.28,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              CustomImageView(
                                                svgPath: ImageConstant.imgStar,
                                                height: getSize(
                                                  21,
                                                ),
                                                width: getSize(
                                                  21,
                                                ),
                                                margin: getMargin(
                                                  left: 13,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 5,
                                                  bottom: 2,
                                                ),
                                                child: Text(
                                                  "lbl_4_2".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRedHatDisplayMedium14
                                                      .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                      0.28,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 19,
                                            top: 13,
                                            bottom: 17,
                                          ),
                                          child: Row(
                                            children: [
                                              Container(
                                                width: getHorizontalSize(
                                                  53,
                                                ),
                                                padding: getPadding(
                                                  left: 11,
                                                  top: 2,
                                                  right: 11,
                                                  bottom: 2,
                                                ),
                                                decoration: AppDecoration
                                                    .txtFillYellow70019
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .txtRoundedBorder5,
                                                ),
                                                child: Text(
                                                  "lbl_steak".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRedHatDisplaySemiBold11
                                                      .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                      0.22,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: getHorizontalSize(
                                                  46,
                                                ),
                                                margin: getMargin(
                                                  left: 11,
                                                ),
                                                padding: getPadding(
                                                  left: 12,
                                                  top: 2,
                                                  right: 12,
                                                  bottom: 2,
                                                ),
                                                decoration: AppDecoration
                                                    .txtFillIndigo10066
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .txtRoundedBorder5,
                                                ),
                                                child: Text(
                                                  "lbl_fish".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRedHatDisplaySemiBold11IndigoA200
                                                      .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                      0.22,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: getHorizontalSize(
                                                  68,
                                                ),
                                                margin: getMargin(
                                                  left: 8,
                                                ),
                                                padding: getPadding(
                                                  left: 13,
                                                  top: 2,
                                                  right: 13,
                                                  bottom: 2,
                                                ),
                                                decoration: AppDecoration
                                                    .txtFillDeeporangeA40033
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .txtRoundedBorder5,
                                                ),
                                                child: Text(
                                                  "lbl_burgers".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRedHatDisplaySemiBold11DeeporangeA400
                                                      .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                      0.22,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: getMargin(
                                left: 14,
                                bottom: 10,
                              ),
                              decoration: AppDecoration.fillWhiteA700.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder15,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: getVerticalSize(
                                      138,
                                    ),
                                    width: getHorizontalSize(
                                      289,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgUnsplashxlmhrnv8yuc,
                                          height: getVerticalSize(
                                            138,
                                          ),
                                          width: getHorizontalSize(
                                            289,
                                          ),
                                          radius: BorderRadius.only(
                                            topLeft: Radius.circular(
                                              getHorizontalSize(
                                                15,
                                              ),
                                            ),
                                            topRight: Radius.circular(
                                              getHorizontalSize(
                                                15,
                                              ),
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                        ),
                                        CustomIconButton(
                                          height: 37,
                                          width: 37,
                                          margin: getMargin(
                                            top: 21,
                                            right: 17,
                                          ),
                                          variant: IconButtonVariant
                                              .FillDeeporangeA400,
                                          shape:
                                              IconButtonShape.RoundedBorder18,
                                          padding:
                                              IconButtonPadding.PaddingAll9,
                                          alignment: Alignment.topRight,
                                          child: CustomImageView(
                                            svgPath: ImageConstant.imgLightbulb,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 19,
                                      top: 13,
                                    ),
                                    child: Text(
                                      "lbl_foodies".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRedHatDisplayBold20,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 19,
                                      top: 10,
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            bottom: 9,
                                          ),
                                          child: Text(
                                            "lbl_15min".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRedHatDisplayMedium14
                                                .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                0.28,
                                              ),
                                            ),
                                          ),
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant.imgStar,
                                          height: getSize(
                                            21,
                                          ),
                                          width: getSize(
                                            21,
                                          ),
                                          margin: getMargin(
                                            left: 16,
                                            bottom: 6,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 5,
                                            top: 7,
                                          ),
                                          child: Text(
                                            "lbl_4_2".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRedHatDisplayRegular1592Bluegray300,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 19,
                                      top: 7,
                                      bottom: 16,
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: getHorizontalSize(
                                            53,
                                          ),
                                          margin: getMargin(
                                            bottom: 1,
                                          ),
                                          padding: getPadding(
                                            left: 13,
                                            top: 2,
                                            right: 13,
                                            bottom: 2,
                                          ),
                                          decoration: AppDecoration
                                              .txtFillYellow70019
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder5,
                                          ),
                                          child: Text(
                                            "lbl_pizza".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRedHatDisplaySemiBold11
                                                .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                0.22,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 11,
                                            top: 3,
                                            bottom: 7,
                                          ),
                                          child: Text(
                                            "lbl_fish".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRedHatDisplayRegular1052IndigoA200,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 33,
                                            top: 10,
                                          ),
                                          child: Text(
                                            "lbl_burgers".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRedHatDisplayRegular1052,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Get.toNamed(getCurrentRoute(type), id: 1);
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeVonePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeVonePage:
        return HomeVonePage();
      default:
        return DefaultWidget();
    }
  }
}
