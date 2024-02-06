import '../home_vone_page/widgets/homevone_item_widget.dart';
import 'controller/home_vone_controller.dart';
import 'models/home_vone_model.dart';
import 'models/homevone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_dropdown.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_stack.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:buenoycerca/widgets/app_bar/custom_app_bar.dart';
import 'package:buenoycerca/widgets/custom_button.dart';
import 'package:buenoycerca/widgets/custom_icon_button.dart';
import 'package:buenoycerca/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HomeVonePage extends StatelessWidget {
  HomeVoneController controller =
      Get.put(HomeVoneController(HomeVoneModel().obs));

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
                  items: controller.homeVoneModelObj.value.dropdownItemList,
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
                      right: 68,
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
                      359,
                    ),
                    margin: getMargin(
                      top: 40,
                    ),
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgUnsplashagjp08hbyy,
                          height: getVerticalSize(
                            151,
                          ),
                          width: getHorizontalSize(
                            359,
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
                                    131,
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
                                    top: 8,
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
                      top: 39,
                    ),
                    child: IntrinsicWidth(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: EdgeInsets.all(0),
                            color: ColorConstant.deepOrange50,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.roundedBorder15,
                            ),
                            child: Container(
                              height: getSize(
                                95,
                              ),
                              width: getSize(
                                95,
                              ),
                              decoration:
                                  AppDecoration.fillDeeporange50.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder15,
                              ),
                              child: Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgBurger1,
                                    height: getVerticalSize(
                                      90,
                                    ),
                                    width: getHorizontalSize(
                                      95,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        15,
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 12,
                                        top: 10,
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
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: getMargin(
                              left: 15,
                            ),
                            color: ColorConstant.amber100,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.roundedBorder15,
                            ),
                            child: Container(
                              height: getSize(
                                95,
                              ),
                              width: getSize(
                                95,
                              ),
                              decoration: AppDecoration.fillAmber100.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder15,
                              ),
                              child: Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgPizza1,
                                    height: getSize(
                                      95,
                                    ),
                                    width: getSize(
                                      95,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        15,
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 12,
                                        top: 9,
                                      ),
                                      child: Text(
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
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: getMargin(
                              left: 15,
                            ),
                            color: ColorConstant.indigo10066,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.roundedBorder15,
                            ),
                            child: Container(
                              height: getSize(
                                95,
                              ),
                              width: getSize(
                                95,
                              ),
                              decoration:
                                  AppDecoration.fillIndigo10066.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder15,
                              ),
                              child: Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgCake1,
                                    height: getVerticalSize(
                                      90,
                                    ),
                                    width: getHorizontalSize(
                                      82,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        15,
                                      ),
                                    ),
                                    alignment: Alignment.centerRight,
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 12,
                                        top: 9,
                                      ),
                                      child: Text(
                                        "lbl_cakes".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRedHatDisplayBold13IndigoA200
                                            .copyWith(
                                          letterSpacing: getHorizontalSize(
                                            0.26,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: getMargin(
                              left: 15,
                            ),
                            color: ColorConstant.teal50026,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.roundedBorder15,
                            ),
                            child: Container(
                              height: getSize(
                                95,
                              ),
                              width: getSize(
                                95,
                              ),
                              decoration: AppDecoration.fillTeal50026.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder15,
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 12,
                                        top: 9,
                                      ),
                                      child: Text(
                                        "lbl_tacos".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRedHatDisplayBold13Teal500
                                            .copyWith(
                                          letterSpacing: getHorizontalSize(
                                            0.26,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgTaco1,
                                    height: getSize(
                                      95,
                                    ),
                                    width: getSize(
                                      95,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        15,
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 37,
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
                          right: 34,
                        ),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: getVerticalSize(
                              14,
                            ),
                          );
                        },
                        itemCount: controller
                            .homeVoneModelObj.value.homevoneItemList.length,
                        itemBuilder: (context, index) {
                          HomevoneItemModel model = controller
                              .homeVoneModelObj.value.homevoneItemList[index];
                          return HomevoneItemWidget(
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
                      right: 34,
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
                                                  left: 14,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 2,
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
                                                  left: 10,
                                                  top: 2,
                                                  right: 10,
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
                                                  44,
                                                ),
                                                margin: getMargin(
                                                  left: 11,
                                                ),
                                                padding: getPadding(
                                                  left: 11,
                                                  top: 2,
                                                  right: 11,
                                                  bottom: 2,
                                                ),
                                                decoration: AppDecoration
                                                    .txtFillIndigoA20019
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
                                                  63,
                                                ),
                                                margin: getMargin(
                                                  left: 11,
                                                ),
                                                padding: getPadding(
                                                  left: 11,
                                                  top: 2,
                                                  right: 11,
                                                  bottom: 2,
                                                ),
                                                decoration: AppDecoration
                                                    .txtFillDeeporangeA40019
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
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            height: getSize(
                                              37,
                                            ),
                                            width: getSize(
                                              37,
                                            ),
                                            margin: getMargin(
                                              top: 26,
                                              right: 17,
                                            ),
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgClose,
                                                  height: getSize(
                                                    37,
                                                  ),
                                                  width: getSize(
                                                    37,
                                                  ),
                                                  alignment: Alignment.center,
                                                ),
                                                CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgLightbulb,
                                                  height: getSize(
                                                    24,
                                                  ),
                                                  width: getSize(
                                                    24,
                                                  ),
                                                  alignment: Alignment.center,
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
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            bottom: 2,
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
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 5,
                                          ),
                                          child: Text(
                                            "lbl_4_2".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRedHatDisplayRegular1592,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 19,
                                      top: 13,
                                      bottom: 8,
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
                                            bottom: 9,
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
                                        Container(
                                          height: getVerticalSize(
                                            32,
                                          ),
                                          width: getHorizontalSize(
                                            98,
                                          ),
                                          margin: getMargin(
                                            left: 11,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.topLeft,
                                            children: [
                                              Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Container(
                                                  width: getHorizontalSize(
                                                    57,
                                                  ),
                                                  padding: getPadding(
                                                    left: 10,
                                                    top: 3,
                                                    right: 10,
                                                    bottom: 3,
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
                                                        .txtRedHatDisplayRegular1052,
                                                  ),
                                                ),
                                              ),
                                              CustomButton(
                                                height: getVerticalSize(
                                                  22,
                                                ),
                                                width: getHorizontalSize(
                                                  44,
                                                ),
                                                text: "lbl_fish".tr,
                                                variant: ButtonVariant
                                                    .FillIndigoA20019,
                                                shape:
                                                    ButtonShape.RoundedBorder5,
                                                padding:
                                                    ButtonPadding.PaddingAll3,
                                                fontStyle: ButtonFontStyle
                                                    .RedHatDisplayMedium1179,
                                                alignment: Alignment.topLeft,
                                              ),
                                            ],
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
      ),
    );
  }
}
