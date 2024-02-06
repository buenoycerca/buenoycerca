import 'controller/add_new_address_manually_controller.dart';
import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';
import 'package:buenoycerca/core/utils/validation_functions.dart';
import 'package:buenoycerca/presentation/home_vone_page/home_vone_page.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_iconbutton.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_stack.dart';
import 'package:buenoycerca/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:buenoycerca/widgets/app_bar/custom_app_bar.dart';
import 'package:buenoycerca/widgets/custom_bottom_bar.dart';
import 'package:buenoycerca/widgets/custom_button.dart';
import 'package:buenoycerca/widgets/custom_drop_down.dart';
import 'package:buenoycerca/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AddNewAddressManuallyScreen
    extends GetWidget<AddNewAddressManuallyController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                height: getVerticalSize(82),
                leadingWidth: 85,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 35, top: 2, bottom: 4),
                    onTap: onTapArrowleft11),
                centerTitle: true,
                title: AppbarSubtitle2(text: "lbl_add_new_address".tr),
                actions: [
                  AppbarStack(
                      margin: getMargin(left: 35, top: 4, right: 35, bottom: 2))
                ]),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 35, top: 106, right: 35),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.groupSixtyNineController,
                              hintText: "lbl_street_number".tr,
                              padding: TextFormFieldPadding.PaddingAll22,
                              textInputType: TextInputType.number,
                              validator: (value) {
                                if (!isNumeric(value)) {
                                  return "Please enter valid number";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.groupSeventyController,
                              hintText: "msg_apt_house_number".tr,
                              margin: getMargin(top: 20),
                              padding: TextFormFieldPadding.PaddingAll22,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.number,
                              validator: (value) {
                                if (!isNumeric(value)) {
                                  return "Please enter valid number";
                                }
                                return null;
                              }),
                          Padding(
                              padding: getPadding(top: 20),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomDropDown(
                                        width: getHorizontalSize(148),
                                        focusNode: FocusNode(),
                                        icon: Container(
                                            margin:
                                                getMargin(left: 30, right: 18),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowdownGray400)),
                                        hintText: "lbl_city".tr,
                                        fontStyle: DropDownFontStyle
                                            .RedHatDisplayMedium14Gray400,
                                        items: controller
                                            .addNewAddressManuallyModelObj
                                            .value
                                            .dropdownItemList,
                                        onChanged: (value) {
                                          controller.onSelected(value);
                                        }),
                                    CustomDropDown(
                                        width: getHorizontalSize(193),
                                        focusNode: FocusNode(),
                                        icon: Container(
                                            margin:
                                                getMargin(left: 30, right: 18),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowdownGray400)),
                                        hintText: "lbl_state".tr,
                                        fontStyle: DropDownFontStyle
                                            .RedHatDisplayMedium14Gray400,
                                        items: controller
                                            .addNewAddressManuallyModelObj
                                            .value
                                            .dropdownItemList1,
                                        onChanged: (value) {
                                          controller.onSelected1(value);
                                        })
                                  ])),
                          CustomButton(
                              height: getVerticalSize(66),
                              text: "lbl_save_changes".tr.toUpperCase(),
                              margin: getMargin(top: 51, bottom: 5))
                        ]))),
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

  onTapArrowleft11() {
    Get.back();
  }
}
