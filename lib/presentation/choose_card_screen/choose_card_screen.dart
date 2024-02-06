import 'controller/choose_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_iconbutton.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_stack.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:buenoycerca/widgets/app_bar/custom_app_bar.dart';
import 'package:buenoycerca/widgets/custom_button.dart';

class ChooseCardScreen extends GetWidget<ChooseCardController> {
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
                    onTap: onTapArrowleft24),
                centerTitle: true,
                title: AppbarSubtitle2(text: "lbl_payment".tr),
                actions: [
                  AppbarStack(
                      margin: getMargin(left: 35, top: 4, right: 35, bottom: 2))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 33, bottom: 33),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 35),
                          child: Text("lbl_choose_card".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRedHatDisplayBold25Black900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.5)))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              padding: getPadding(left: 35, top: 31),
                              child: IntrinsicWidth(
                                  child: Container(
                                      width: double.maxFinite,
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Card(
                                                clipBehavior: Clip.antiAlias,
                                                elevation: 0,
                                                margin: getMargin(
                                                    top: 41, bottom: 41),
                                                shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                        color: ColorConstant
                                                            .gray300Cc,
                                                        width:
                                                            getHorizontalSize(
                                                                3)),
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder18),
                                                child: Container(
                                                    height:
                                                        getVerticalSize(102),
                                                    width:
                                                        getHorizontalSize(78),
                                                    padding: getPadding(
                                                        left: 24,
                                                        top: 36,
                                                        right: 24,
                                                        bottom: 36),
                                                    decoration: AppDecoration
                                                        .outlineGray300cc1
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder18),
                                                    child: Stack(children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgPlusGray300,
                                                          height: getSize(28),
                                                          width: getSize(28),
                                                          alignment:
                                                              Alignment.center)
                                                    ]))),
                                            Expanded(
                                                child: Padding(
                                                    padding:
                                                        getPadding(left: 30),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                              decoration: AppDecoration
                                                                  .gradientDeeppurpleA200IndigoA700
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder30),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Container(
                                                                        padding: getPadding(
                                                                            left:
                                                                                17,
                                                                            top:
                                                                                20,
                                                                            right:
                                                                                17,
                                                                            bottom:
                                                                                20),
                                                                        decoration: BoxDecoration(
                                                                            image: DecorationImage(
                                                                                image: fs.Svg(ImageConstant
                                                                                    .imgGroup407),
                                                                                fit: BoxFit
                                                                                    .cover)),
                                                                        child: Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                            children: [
                                                                              CustomImageView(svgPath: ImageConstant.imgVolumeDeepPurpleA20001, height: getVerticalSize(27), width: getHorizontalSize(45)),
                                                                              Padding(padding: getPadding(top: 34), child: Text("lbl_credit_card".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtCeraProMedium12)),
                                                                              Padding(
                                                                                  padding: getPadding(top: 4),
                                                                                  child: Row(children: [
                                                                                    Container(height: getSize(4), width: getSize(4), margin: getMargin(top: 6, bottom: 6), decoration: BoxDecoration(color: ColorConstant.whiteA700, borderRadius: BorderRadius.circular(getHorizontalSize(2)))),
                                                                                    Container(height: getSize(4), width: getSize(4), margin: getMargin(left: 6, top: 6, bottom: 6), decoration: BoxDecoration(color: ColorConstant.whiteA700, borderRadius: BorderRadius.circular(getHorizontalSize(2)))),
                                                                                    Container(height: getSize(4), width: getSize(4), margin: getMargin(left: 6, top: 6, bottom: 6), decoration: BoxDecoration(color: ColorConstant.whiteA700, borderRadius: BorderRadius.circular(getHorizontalSize(2)))),
                                                                                    Container(height: getSize(4), width: getSize(4), margin: getMargin(left: 6, top: 6, bottom: 6), decoration: BoxDecoration(color: ColorConstant.whiteA700, borderRadius: BorderRadius.circular(getHorizontalSize(2)))),
                                                                                    Padding(padding: getPadding(left: 14), child: Text("lbl_1289".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtCeraProMedium13))
                                                                                  ])),
                                                                              Padding(
                                                                                  padding: getPadding(top: 16, bottom: 5),
                                                                                  child: Row(children: [
                                                                                    Card(
                                                                                        clipBehavior: Clip.antiAlias,
                                                                                        elevation: 0,
                                                                                        margin: EdgeInsets.all(0),
                                                                                        shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder5),
                                                                                        child: Container(
                                                                                            height: getVerticalSize(22),
                                                                                            width: getHorizontalSize(33),
                                                                                            decoration: AppDecoration.gradientWhiteA700Gray300.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                                                                                            child: Stack(children: [
                                                                                              CustomImageView(svgPath: ImageConstant.imgVolumeGray30001, height: getVerticalSize(21), width: getHorizontalSize(33), alignment: Alignment.center)
                                                                                            ]))),
                                                                                    Padding(padding: getPadding(left: 47, top: 5, bottom: 2), child: Text("lbl_09_25".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtCeraProMedium11))
                                                                                  ]))
                                                                            ]))
                                                                  ])),
                                                          Container(
                                                              margin: getMargin(
                                                                  left: 30),
                                                              decoration: AppDecoration
                                                                  .gradientPink500Red400
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder30),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Container(
                                                                        padding: getPadding(
                                                                            left:
                                                                                17,
                                                                            top:
                                                                                20,
                                                                            right:
                                                                                17,
                                                                            bottom:
                                                                                20),
                                                                        decoration: BoxDecoration(
                                                                            image: DecorationImage(
                                                                                image: fs.Svg(ImageConstant
                                                                                    .imgGroup407),
                                                                                fit: BoxFit
                                                                                    .cover)),
                                                                        child: Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                            children: [
                                                                              CustomImageView(svgPath: ImageConstant.imgVolumePink300, height: getVerticalSize(27), width: getHorizontalSize(45)),
                                                                              Padding(padding: getPadding(top: 34), child: Text("lbl_credit_card".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtCeraProMedium12)),
                                                                              Padding(
                                                                                  padding: getPadding(top: 4),
                                                                                  child: Row(children: [
                                                                                    Container(height: getSize(4), width: getSize(4), margin: getMargin(top: 6, bottom: 6), decoration: BoxDecoration(color: ColorConstant.whiteA700, borderRadius: BorderRadius.circular(getHorizontalSize(2)))),
                                                                                    Container(height: getSize(4), width: getSize(4), margin: getMargin(left: 6, top: 6, bottom: 6), decoration: BoxDecoration(color: ColorConstant.whiteA700, borderRadius: BorderRadius.circular(getHorizontalSize(2)))),
                                                                                    Container(height: getSize(4), width: getSize(4), margin: getMargin(left: 6, top: 6, bottom: 6), decoration: BoxDecoration(color: ColorConstant.whiteA700, borderRadius: BorderRadius.circular(getHorizontalSize(2)))),
                                                                                    Container(height: getSize(4), width: getSize(4), margin: getMargin(left: 6, top: 6, bottom: 6), decoration: BoxDecoration(color: ColorConstant.whiteA700, borderRadius: BorderRadius.circular(getHorizontalSize(2)))),
                                                                                    Padding(padding: getPadding(left: 14), child: Text("lbl_2468".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtCeraProMedium13))
                                                                                  ])),
                                                                              Padding(
                                                                                  padding: getPadding(top: 16, bottom: 5),
                                                                                  child: Row(children: [
                                                                                    Card(
                                                                                        clipBehavior: Clip.antiAlias,
                                                                                        elevation: 0,
                                                                                        margin: EdgeInsets.all(0),
                                                                                        shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder5),
                                                                                        child: Container(
                                                                                            height: getVerticalSize(22),
                                                                                            width: getHorizontalSize(33),
                                                                                            decoration: AppDecoration.gradientWhiteA700Gray300.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                                                                                            child: Stack(children: [
                                                                                              CustomImageView(svgPath: ImageConstant.imgVolumeGray30001, height: getVerticalSize(21), width: getHorizontalSize(33), alignment: Alignment.center)
                                                                                            ]))),
                                                                                    Padding(padding: getPadding(left: 37, top: 5, bottom: 2), child: Text("lbl_12_24".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.right, style: AppStyle.txtCeraProMedium11))
                                                                                  ]))
                                                                            ]))
                                                                  ]))
                                                        ])))
                                          ]))))),
                      Spacer(),
                      CustomButton(
                          height: getVerticalSize(66),
                          text: "lbl_use_this_card".tr.toUpperCase(),
                          margin: getMargin(left: 33, right: 37, bottom: 66),
                          alignment: Alignment.center)
                    ]))));
  }

  onTapArrowleft24() {
    Get.back();
  }
}
