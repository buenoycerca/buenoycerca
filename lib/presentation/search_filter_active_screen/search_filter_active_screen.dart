import '../search_filter_active_screen/widgets/listframe_item_widget.dart';
import 'controller/search_filter_active_controller.dart';
import 'models/listframe_item_model.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/home_vone_page/home_vone_page.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_iconbutton.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_stack.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:buenoycerca/widgets/app_bar/custom_app_bar.dart';
import 'package:buenoycerca/widgets/custom_bottom_bar.dart';
import 'package:buenoycerca/widgets/custom_button.dart';

class SearchFilterActiveScreen extends GetWidget<SearchFilterActiveController> {
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
                    onTap: onTapArrowleft8),
                centerTitle: true,
                title: AppbarSubtitle2(text: "lbl_search_filter".tr),
                actions: [
                  AppbarStack(
                      margin: getMargin(left: 35, top: 4, right: 35, bottom: 2))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 31, bottom: 31),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 35),
                          child: Text("lbl_category".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRedHatDisplayBold25Black900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.5)))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              padding: getPadding(left: 35, top: 20),
                              child: IntrinsicWidth(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                    Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: EdgeInsets.all(0),
                                        color: ColorConstant.deepOrange50,
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                color: ColorConstant
                                                    .deepOrangeA400,
                                                width: getHorizontalSize(2)),
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder15),
                                        child: Container(
                                            height: getSize(95),
                                            width: getSize(95),
                                            decoration: AppDecoration
                                                .outlineDeeporangeA4002
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder15),
                                            child: Stack(
                                                alignment: Alignment.topLeft,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgBurger1,
                                                      height:
                                                          getVerticalSize(90),
                                                      width:
                                                          getHorizontalSize(95),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  15)),
                                                      alignment:
                                                          Alignment.center),
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 12,
                                                              top: 10),
                                                          child: Text(
                                                              "lbl_burgers".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRedHatDisplayBold13
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.26)))))
                                                ]))),
                                    Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: getMargin(left: 15),
                                        color: ColorConstant.amber100,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder15),
                                        child: Container(
                                            height: getSize(95),
                                            width: getSize(95),
                                            decoration: AppDecoration
                                                .fillAmber100
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder15),
                                            child: Stack(
                                                alignment: Alignment.topLeft,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgPizza1,
                                                      height: getSize(95),
                                                      width: getSize(95),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  15)),
                                                      alignment:
                                                          Alignment.center),
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 12, top: 9),
                                                          child: Text(
                                                              "lbl_pizzas".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRedHatDisplayBold13Amber700
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.26)))))
                                                ]))),
                                    Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: getMargin(left: 15),
                                        color: ColorConstant.indigo10066,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder15),
                                        child: Container(
                                            height: getSize(95),
                                            width: getSize(95),
                                            decoration: AppDecoration
                                                .fillIndigo10066
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder15),
                                            child: Stack(
                                                alignment: Alignment.topLeft,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgCake1,
                                                      height:
                                                          getVerticalSize(90),
                                                      width:
                                                          getHorizontalSize(82),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  15)),
                                                      alignment: Alignment
                                                          .centerRight),
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 12, top: 9),
                                                          child: Text(
                                                              "lbl_cakes".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRedHatDisplayBold13IndigoA200
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.26)))))
                                                ]))),
                                    Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: getMargin(left: 15),
                                        color: ColorConstant.teal50026,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder15),
                                        child: Container(
                                            height: getSize(95),
                                            width: getSize(95),
                                            decoration: AppDecoration
                                                .fillTeal50026
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder15),
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 12, top: 9),
                                                          child: Text(
                                                              "lbl_tacos".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRedHatDisplayBold13Teal500
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.26))))),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgTaco1,
                                                      height: getSize(95),
                                                      width: getSize(95),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  15)),
                                                      alignment:
                                                          Alignment.center)
                                                ])))
                                  ])))),
                      Padding(
                          padding: getPadding(left: 35, top: 45),
                          child: Text("lbl_sort_by".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRedHatDisplayBold25Black900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.5)))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(63),
                              child: Obx(() => ListView.separated(
                                  padding: getPadding(left: 35, top: 20),
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(16));
                                  },
                                  itemCount: controller
                                      .searchFilterActiveModelObj
                                      .value
                                      .listframeItemList
                                      .length,
                                  itemBuilder: (context, index) {
                                    ListframeItemModel model = controller
                                        .searchFilterActiveModelObj
                                        .value
                                        .listframeItemList[index];
                                    return ListframeItemWidget(model);
                                  })))),
                      Padding(
                          padding: getPadding(left: 34, top: 42),
                          child: Text("lbl_price".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRedHatDisplayBold25Black900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.5)))),
                      CustomImageView(
                          svgPath: ImageConstant.imgComponent10,
                          height: getVerticalSize(32),
                          width: getHorizontalSize(358),
                          alignment: Alignment.center,
                          margin: getMargin(top: 19)),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 41, top: 9, right: 42),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("lbl_0".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRedHatDisplayBold13Gray400
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.26))),
                                    Padding(
                                        padding: getPadding(left: 34),
                                        child: Text("lbl_25".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRedHatDisplayBold13Gray400
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.26)))),
                                    Padding(
                                        padding: getPadding(left: 34),
                                        child: Text("lbl_502".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRedHatDisplayBold13Gray400
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.26)))),
                                    Padding(
                                        padding: getPadding(left: 33),
                                        child: Text("lbl_100".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRedHatDisplayBold13Gray400
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.26)))),
                                    Padding(
                                        padding: getPadding(left: 34),
                                        child: Text("lbl_500".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRedHatDisplayBold13Gray400
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.26)))),
                                    Padding(
                                        padding: getPadding(left: 34),
                                        child: Text("lbl_1000".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRedHatDisplayBold13Gray400
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.26))))
                                  ]))),
                      CustomButton(
                          height: getVerticalSize(66),
                          text: "lbl_apply".tr.toUpperCase(),
                          margin: getMargin(
                              left: 35, top: 47, right: 35, bottom: 5),
                          alignment: Alignment.center)
                    ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeVonePage;
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeVonePage:
        return HomeVonePage();
      default:
        return DefaultWidget();
    }
  }

  onTapArrowleft8() {
    Get.back();
  }
}
