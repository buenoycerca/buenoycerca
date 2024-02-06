import '../restaurants_near_you_vtwo_screen/widgets/listrectanglefortythree1_item_widget.dart';
import 'controller/restaurants_near_you_vtwo_controller.dart';
import 'models/listrectanglefortythree1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/presentation/home_vone_page/home_vone_page.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_iconbutton.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_stack.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:buenoycerca/widgets/app_bar/custom_app_bar.dart';
import 'package:buenoycerca/widgets/custom_bottom_bar.dart';

class RestaurantsNearYouVtwoScreen
    extends GetWidget<RestaurantsNearYouVtwoController> {
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
                    onTap: onTapArrowleft1),
                centerTitle: true,
                title: AppbarSubtitle2(text: "msg_restaurants_near".tr),
                actions: [
                  AppbarStack(
                      margin: getMargin(left: 35, top: 4, right: 35, bottom: 2))
                ]),
            body: Padding(
                padding: getPadding(left: 35, top: 42, right: 23),
                child: Obx(() => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(12));
                    },
                    itemCount: controller.restaurantsNearYouVtwoModelObj.value
                        .listrectanglefortythree1ItemList.length,
                    itemBuilder: (context, index) {
                      Listrectanglefortythree1ItemModel model = controller
                          .restaurantsNearYouVtwoModelObj
                          .value
                          .listrectanglefortythree1ItemList[index];
                      return Listrectanglefortythree1ItemWidget(model);
                    }))),
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

  onTapArrowleft1() {
    Get.back();
  }
}
