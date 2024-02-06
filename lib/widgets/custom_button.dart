import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      shadowColor: _setTextButtonShadowColor(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll18:
        return getPadding(
          all: 18,
        );
      case ButtonPadding.PaddingAll10:
        return getPadding(
          all: 10,
        );
      case ButtonPadding.PaddingAll3:
        return getPadding(
          all: 3,
        );
      case ButtonPadding.PaddingT18:
        return getPadding(
          left: 15,
          top: 18,
          right: 15,
          bottom: 18,
        );
      case ButtonPadding.PaddingAll7:
        return getPadding(
          all: 7,
        );
      default:
        return getPadding(
          all: 21,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.White:
        return ColorConstant.whiteA700;
      case ButtonVariant.FillIndigo500:
        return ColorConstant.indigo500;
      case ButtonVariant.FillDeeporange50:
        return ColorConstant.deepOrange50;
      case ButtonVariant.FillIndigoA20019:
        return ColorConstant.indigoA20019;
      case ButtonVariant.OutlineBluegray10040:
        return ColorConstant.deepOrangeA400;
      case ButtonVariant.OutlineBluegray10040_1:
        return ColorConstant.deepOrange50;
      case ButtonVariant.FillGray300cc:
        return ColorConstant.gray300Cc;
      case ButtonVariant.FillYellow70019:
        return ColorConstant.yellow70019;
      default:
        return ColorConstant.deepOrangeA400;
    }
  }

  _setTextButtonShadowColor() {
    switch (variant) {
      case ButtonVariant.White:
        return ColorConstant.blueGray40019;
      case ButtonVariant.OutlineBluegray10040:
        return ColorConstant.blueGray10040;
      case ButtonVariant.OutlineBluegray10040_1:
        return ColorConstant.blueGray10040;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.CircleBorder18:
        return BorderRadius.circular(
          getHorizontalSize(
            18.00,
          ),
        );
      case ButtonShape.RoundedBorder5:
        return BorderRadius.circular(
          getHorizontalSize(
            5.00,
          ),
        );
      case ButtonShape.CustomBorderTL15:
        return BorderRadius.only(
          topLeft: Radius.circular(
            getHorizontalSize(
              15.00,
            ),
          ),
          topRight: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
          bottomLeft: Radius.circular(
            getHorizontalSize(
              15.00,
            ),
          ),
          bottomRight: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            15.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.RedHatDisplaySemiBold14:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Red Hat Display',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.36,
          ),
        );
      case ButtonFontStyle.RedHatDisplaySemiBold14Gray100:
        return TextStyle(
          color: ColorConstant.gray100,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Red Hat Display',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.36,
          ),
        );
      case ButtonFontStyle.RedHatDisplaySemiBold16DeeporangeA400:
        return TextStyle(
          color: ColorConstant.deepOrangeA400,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Red Hat Display',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.38,
          ),
        );
      case ButtonFontStyle.RedHatDisplaySemiBold11:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            11,
          ),
          fontFamily: 'Red Hat Display',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.36,
          ),
        );
      case ButtonFontStyle.RedHatDisplayMedium1179:
        return TextStyle(
          color: ColorConstant.indigoA200,
          fontSize: getFontSize(
            11.79,
          ),
          fontFamily: 'Red Hat Display',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.27,
          ),
        );
      case ButtonFontStyle.RedHatDisplaySemiBold1183:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            11.83,
          ),
          fontFamily: 'Red Hat Display',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.35,
          ),
        );
      case ButtonFontStyle.RedHatDisplayMedium14:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Red Hat Display',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.36,
          ),
        );
      case ButtonFontStyle.RedHatDisplayMedium14DeeporangeA400:
        return TextStyle(
          color: ColorConstant.deepOrangeA400,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Red Hat Display',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.36,
          ),
        );
      case ButtonFontStyle.RedHatDisplayMedium14Gray300cc:
        return TextStyle(
          color: ColorConstant.gray300Cc,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Red Hat Display',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.36,
          ),
        );
      case ButtonFontStyle.RedHatDisplayMedium14Black900:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Red Hat Display',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.36,
          ),
        );
      case ButtonFontStyle.RedHatDisplayMedium14Amber700:
        return TextStyle(
          color: ColorConstant.amber700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Red Hat Display',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.36,
          ),
        );
      case ButtonFontStyle.RedHatDisplaySemiBold11DeeporangeA40001:
        return TextStyle(
          color: ColorConstant.deepOrangeA40001,
          fontSize: getFontSize(
            11,
          ),
          fontFamily: 'Red Hat Display',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.36,
          ),
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Red Hat Display',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.38,
          ),
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder15,
  CircleBorder18,
  RoundedBorder5,
  CustomBorderTL15,
}

enum ButtonPadding {
  PaddingAll21,
  PaddingAll18,
  PaddingAll10,
  PaddingAll3,
  PaddingT18,
  PaddingAll7,
}

enum ButtonVariant {
  FillDeeporangeA400,
  White,
  FillIndigo500,
  FillDeeporange50,
  FillIndigoA20019,
  OutlineBluegray10040,
  OutlineBluegray10040_1,
  FillGray300cc,
  FillYellow70019,
}

enum ButtonFontStyle {
  RedHatDisplaySemiBold16,
  RedHatDisplaySemiBold14,
  RedHatDisplaySemiBold14Gray100,
  RedHatDisplaySemiBold16DeeporangeA400,
  RedHatDisplaySemiBold11,
  RedHatDisplayMedium1179,
  RedHatDisplaySemiBold1183,
  RedHatDisplayMedium14,
  RedHatDisplayMedium14DeeporangeA400,
  RedHatDisplayMedium14Gray300cc,
  RedHatDisplayMedium14Black900,
  RedHatDisplayMedium14Amber700,
  RedHatDisplaySemiBold11DeeporangeA40001,
}
