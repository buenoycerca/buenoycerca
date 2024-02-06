import '../favourite_vtwo_screen/widgets/favouritevtwo_item_widget.dart';
import 'controller/favourite_vtwo_controller.dart';
import 'models/favouritevtwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/home_vone_page/home_vone_page.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_dropdown.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_stack_1.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:buenoycerca/widgets/app_bar/custom_app_bar.dart';
import 'package:buenoycerca/widgets/custom_bottom_bar.dart';
import 'package:buenoycerca/widgets/custom_icon_button.dart';
import 'package:buenoycerca/widgets/custom_search_view.dart';

class FavouriteVtwoScreen extends GetWidget<FavouriteVtwoController> {
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
                      controller.favouriteVtwoModelObj.value.dropdownItemList,
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
                            decoration: AppDecoration.fillDeeporange50.copyWith(
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
                            decoration: AppDecoration.fillIndigo10066.copyWith(
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
                  top: 22,
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
                    itemCount: controller.favouriteVtwoModelObj.value
                        .favouritevtwoItemList.length,
                    itemBuilder: (context, index) {
                      FavouritevtwoItemModel model = controller
                          .favouriteVtwoModelObj
                          .value
                          .favouritevtwoItemList[index];
                      return FavouritevtwoItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
            ],
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
