import 'controller/added_to_cart_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/widgets/custom_icon_button.dart';
import 'package:buenoycerca/widgets/custom_text_form_field.dart';

class AddedToCartOneScreen extends GetWidget<AddedToCartOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray100,
            body: Container(
                height: getVerticalSize(891),
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          width: double.maxFinite,
                          margin: getMargin(bottom: 540),
                          padding: getPadding(
                              left: 31, top: 37, right: 31, bottom: 37),
                          decoration: AppDecoration.fillDeeporange50,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowleft,
                                    height: getSize(32),
                                    width: getSize(32),
                                    margin: getMargin(bottom: 244),
                                    onTap: () {
                                      onTapImgArrowleft();
                                    }),
                                CustomImageView(
                                    svgPath: ImageConstant.imgFavorite,
                                    height: getSize(32),
                                    width: getSize(32),
                                    margin: getMargin(right: 2, bottom: 244))
                              ]))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          padding: getPadding(
                              left: 34, top: 44, right: 34, bottom: 44),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL25),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                    padding: getPadding(top: 48),
                                    child: Text("lbl_cream_chicken".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtRedHatDisplayBold32)),
                                Padding(
                                    padding: getPadding(top: 5),
                                    child: Row(children: [
                                      Padding(
                                          padding: getPadding(bottom: 1),
                                          child: Text("lbl_24min2".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRedHatDisplayMedium14
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.28)))),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgStar,
                                          height: getSize(19),
                                          width: getSize(19),
                                          margin: getMargin(left: 10)),
                                      Padding(
                                          padding: getPadding(left: 4, top: 1),
                                          child: Text("lbl_4_8".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRedHatDisplayMedium14
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.28)))),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgFire,
                                          height: getVerticalSize(15),
                                          width: getHorizontalSize(11),
                                          margin: getMargin(
                                              left: 11, top: 2, bottom: 2)),
                                      Padding(
                                          padding: getPadding(left: 10),
                                          child: Text("lbl_356_kcal".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRedHatDisplayMedium14
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.28))))
                                    ])),
                                Container(
                                    width: getHorizontalSize(75),
                                    margin: getMargin(top: 15),
                                    padding: getPadding(
                                        left: 11, top: 2, right: 11, bottom: 2),
                                    decoration: AppDecoration.txtFillYellow70019
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder5),
                                    child: Text("lbl_healthy".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRedHatDisplayMedium14Amber700
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.28)))),
                                Padding(
                                    padding: getPadding(top: 29),
                                    child: Text("lbl_description".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRedHatDisplaySemiBold18
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.36)))),
                                Container(
                                    width: getHorizontalSize(352),
                                    margin: getMargin(top: 9, right: 5),
                                    child: Text("msg_the_name_says_it".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRedHatDisplayRegular15
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.3)))),
                                Padding(
                                    padding: getPadding(top: 28),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              margin:
                                                  getMargin(top: 1, bottom: 2),
                                              decoration: AppDecoration
                                                  .outlineGray300cc
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder11),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Card(
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        elevation: 0,
                                                        margin:
                                                            EdgeInsets.all(0),
                                                        shape: RoundedRectangleBorder(
                                                            side: BorderSide(
                                                                color: ColorConstant
                                                                    .gray300Cc,
                                                                width:
                                                                    getHorizontalSize(
                                                                        1)),
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .customBorderTL10),
                                                        child: Container(
                                                            height:
                                                                getVerticalSize(
                                                                    45),
                                                            width:
                                                                getHorizontalSize(
                                                                    48),
                                                            padding: getPadding(
                                                                left: 13,
                                                                top: 11,
                                                                right: 13,
                                                                bottom: 11),
                                                            decoration: AppDecoration
                                                                .outlineGray300cc
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .customBorderTL10),
                                                            child:
                                                                Stack(children: [
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgMenu,
                                                                  height:
                                                                      getSize(
                                                                          22),
                                                                  width:
                                                                      getSize(
                                                                          22),
                                                                  alignment:
                                                                      Alignment
                                                                          .center)
                                                            ]))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 36,
                                                            top: 8,
                                                            bottom: 6),
                                                        child: Text("lbl_1".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRedHatDisplayMedium22)),
                                                    Card(
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        elevation: 0,
                                                        margin:
                                                            getMargin(left: 37),
                                                        shape: RoundedRectangleBorder(
                                                            side: BorderSide(
                                                                color: ColorConstant
                                                                    .gray300Cc,
                                                                width:
                                                                    getHorizontalSize(
                                                                        1)),
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .customBorderTL10),
                                                        child: Container(
                                                            height:
                                                                getVerticalSize(
                                                                    45),
                                                            width:
                                                                getHorizontalSize(
                                                                    48),
                                                            padding: getPadding(
                                                                left: 17,
                                                                top: 16,
                                                                right: 17,
                                                                bottom: 16),
                                                            decoration: AppDecoration
                                                                .outlineGray300cc
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .customBorderTL10),
                                                            child:
                                                                Stack(children: [
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgPlus,
                                                                  height:
                                                                      getSize(
                                                                          13),
                                                                  width:
                                                                      getSize(
                                                                          13),
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft)
                                                            ])))
                                                  ])),
                                          RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "lbl_12".tr,
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .black900,
                                                        fontSize:
                                                            getFontSize(34),
                                                        fontFamily:
                                                            'Red Hat Display',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.68))),
                                                TextSpan(
                                                    text: "lbl".tr,
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .black900,
                                                        fontSize: getFontSize(
                                                            25.847970962524414),
                                                        fontFamily:
                                                            'Red Hat Display',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.52))),
                                                TextSpan(
                                                    text: "lbl_99".tr,
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .gray500,
                                                        fontSize:
                                                            getFontSize(24),
                                                        fontFamily:
                                                            'Red Hat Display',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.48)))
                                              ]),
                                              textAlign: TextAlign.left)
                                        ])),
                                Container(
                                    margin: getMargin(top: 27),
                                    padding: getPadding(
                                        left: 17,
                                        top: 16,
                                        right: 17,
                                        bottom: 16),
                                    decoration: AppDecoration.black.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder15),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomIconButton(
                                              height: 47,
                                              width: 47,
                                              variant: IconButtonVariant
                                                  .FillDeeporangeA400,
                                              shape: IconButtonShape
                                                  .RoundedBorder10,
                                              padding:
                                                  IconButtonPadding.PaddingAll9,
                                              child: CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgCart)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 14,
                                                  top: 12,
                                                  bottom: 14),
                                              child: Text(
                                                  "lbl_added_to_cart"
                                                      .tr
                                                      .toUpperCase(),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRedHatDisplayBold15)),
                                          Spacer(),
                                          CustomTextFormField(
                                              width: getHorizontalSize(84),
                                              focusNode: FocusNode(),
                                              controller:
                                                  controller.priceOneController,
                                              hintText: "lbl_19_99".tr,
                                              margin: getMargin(
                                                  top: 4, right: 3, bottom: 3),
                                              variant: TextFormFieldVariant
                                                  .FillBluegray700cc,
                                              shape: TextFormFieldShape
                                                  .RoundedBorder10,
                                              padding: TextFormFieldPadding
                                                  .PaddingAll4,
                                              fontStyle: TextFormFieldFontStyle
                                                  .ManropeBold2082,
                                              textInputAction:
                                                  TextInputAction.done)
                                        ]))
                              ]))),
                  CustomImageView(
                      imagePath: ImageConstant.imgImage1,
                      height: getVerticalSize(282),
                      width: getHorizontalSize(277),
                      alignment: Alignment.topCenter,
                      margin: getMargin(top: 70))
                ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
