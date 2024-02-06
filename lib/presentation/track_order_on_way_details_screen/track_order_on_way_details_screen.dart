import '../track_order_on_way_details_screen/widgets/listbookmark1_item_widget.dart';
import 'controller/track_order_on_way_details_controller.dart';
import 'models/listbookmark1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_iconbutton.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_stack.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:buenoycerca/widgets/app_bar/custom_app_bar.dart';

class TrackOrderOnWayDetailsScreen
    extends GetWidget<TrackOrderOnWayDetailsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Container(
                height: getVerticalSize(891),
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          margin: getMargin(top: 42),
                          padding: getPadding(
                              left: 35, top: 59, right: 35, bottom: 59),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: fs.Svg(ImageConstant.imgGroup434),
                                  fit: BoxFit.cover)),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgVector447,
                                    height: getVerticalSize(214),
                                    width: getHorizontalSize(115),
                                    margin: getMargin(top: 118, right: 22)),
                                Spacer(),
                                Container(
                                    width: double.maxFinite,
                                    child: Container(
                                        decoration: AppDecoration.fillGray70033
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder15),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  width: double.maxFinite,
                                                  child: Container(
                                                      margin:
                                                          getMargin(bottom: 23),
                                                      decoration: AppDecoration
                                                          .fillWhiteA700
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder15),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            16,
                                                                        top: 15,
                                                                        right:
                                                                            16,
                                                                        bottom:
                                                                            15),
                                                                decoration: AppDecoration
                                                                    .black
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .customBorderTL15),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgUnsplashk84vnnzxmtq,
                                                                          height: getVerticalSize(
                                                                              45),
                                                                          width: getHorizontalSize(
                                                                              47),
                                                                          radius: BorderRadius.circular(getHorizontalSize(
                                                                              12)),
                                                                          margin:
                                                                              getMargin(top: 1)),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  16,
                                                                              top:
                                                                                  4,
                                                                              bottom:
                                                                                  4),
                                                                          child: Column(
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                Text("lbl_ryan_hall".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRedHatDisplayMedium16WhiteA700.copyWith(letterSpacing: getHorizontalSize(0.32))),
                                                                                Text("lbl_food_rider".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRedHatDisplayMedium10WhiteA700.copyWith(letterSpacing: getHorizontalSize(0.2)))
                                                                              ])),
                                                                      Spacer(),
                                                                      Container(
                                                                          height: getVerticalSize(
                                                                              45),
                                                                          width: getHorizontalSize(
                                                                              47),
                                                                          margin: getMargin(
                                                                              top:
                                                                                  1,
                                                                              right:
                                                                                  1),
                                                                          child: Stack(
                                                                              alignment: Alignment.center,
                                                                              children: [
                                                                                CustomImageView(svgPath: ImageConstant.imgBox, height: getVerticalSize(45), width: getHorizontalSize(47), alignment: Alignment.center),
                                                                                CustomImageView(svgPath: ImageConstant.imgGrid, height: getSize(32), width: getSize(32), alignment: Alignment.center)
                                                                              ]))
                                                                    ])),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            24,
                                                                        top: 18,
                                                                        right:
                                                                            17,
                                                                        bottom:
                                                                            17),
                                                                child: Obx(() => ListView
                                                                    .separated(
                                                                        physics:
                                                                            NeverScrollableScrollPhysics(),
                                                                        shrinkWrap:
                                                                            true,
                                                                        separatorBuilder:
                                                                            (context,
                                                                                index) {
                                                                          return SizedBox(
                                                                              height: getVerticalSize(1));
                                                                        },
                                                                        itemCount: controller
                                                                            .trackOrderOnWayDetailsModelObj
                                                                            .value
                                                                            .listbookmark1ItemList
                                                                            .length,
                                                                        itemBuilder:
                                                                            (context,
                                                                                index) {
                                                                          Listbookmark1ItemModel model = controller
                                                                              .trackOrderOnWayDetailsModelObj
                                                                              .value
                                                                              .listbookmark1ItemList[index];
                                                                          return Listbookmark1ItemWidget(
                                                                              model);
                                                                        })))
                                                          ])))
                                            ])))
                              ]))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          padding: getPadding(top: 28, bottom: 28),
                          decoration: AppDecoration.gradientGray100Gray10000,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomAppBar(
                                    height: getVerticalSize(52),
                                    leadingWidth: 85,
                                    leading: AppbarIconbutton(
                                        svgPath: ImageConstant.imgArrowleft,
                                        margin: getMargin(left: 35, bottom: 2),
                                        onTap: onTapArrowleft31),
                                    centerTitle: true,
                                    title: AppbarSubtitle1(
                                        text: "lbl_track_order".tr),
                                    actions: [
                                      AppbarStack(
                                          margin: getMargin(
                                              left: 35, top: 2, right: 35))
                                    ]),
                                Container(
                                    height: getVerticalSize(54),
                                    width: getHorizontalSize(190),
                                    margin: getMargin(
                                        top: 102, right: 64, bottom: 16),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.blueGray9006c,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(9))))
                              ]))),
                  Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                          padding: getPadding(top: 160, right: 64),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    padding: getPadding(
                                        left: 15, top: 9, right: 15, bottom: 9),
                                    decoration: AppDecoration.fillWhiteA700
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder11),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgFoodimage,
                                          height: getSize(44),
                                          width: getSize(44)),
                                      Padding(
                                          padding: getPadding(
                                              left: 11, top: 5, bottom: 3),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text("lbl_cream_chicken".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRedHatDisplayMedium14Black900
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.28))),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 1, top: 1),
                                                    child: Text(
                                                        "lbl_15_minutes".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRedHatDisplayMedium10Black90066
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.2))))
                                              ]))
                                    ])),
                                Container(
                                    margin: getMargin(top: 77, right: 13),
                                    padding: getPadding(all: 4),
                                    decoration: AppDecoration
                                        .fillDeeporangeA40033
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder11),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: getSize(14),
                                              width: getSize(14),
                                              decoration: BoxDecoration(
                                                  color: ColorConstant
                                                      .deepOrangeA40001,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              7))))
                                        ])),
                                Container(
                                    height: getVerticalSize(135),
                                    width: getHorizontalSize(184),
                                    margin: getMargin(top: 72, right: 4),
                                    child: Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                  padding: getPadding(
                                                      left: 25,
                                                      top: 17,
                                                      right: 25,
                                                      bottom: 17),
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: fs.Svg(
                                                              ImageConstant
                                                                  .imgLocationcard),
                                                          fit: BoxFit.cover)),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                            width:
                                                                getHorizontalSize(
                                                                    120),
                                                            margin: getMargin(
                                                                bottom: 21),
                                                            child: Text(
                                                                "msg_horizenal_road_stree"
                                                                    .tr,
                                                                maxLines: null,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRedHatDisplayMedium10Black90066
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.2))))
                                                      ]))),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgEyeBlack900,
                                              height: getVerticalSize(63),
                                              width: getHorizontalSize(55),
                                              alignment: Alignment.topCenter)
                                        ]))
                              ]))),
                  Align(
                      alignment: Alignment.topRight,
                      child: Container(
                          height: getVerticalSize(33),
                          width: getHorizontalSize(103),
                          margin: getMargin(top: 265, right: 37),
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgBg,
                                height: getVerticalSize(33),
                                width: getHorizontalSize(103),
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Text("lbl_8_minutes_away".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRedHatDisplayMedium10Black90066
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.2))))
                          ])))
                ]))));
  }

  onTapArrowleft31() {
    Get.back();
  }
}
