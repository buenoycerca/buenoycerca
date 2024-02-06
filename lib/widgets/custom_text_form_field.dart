import 'package:flutter/material.dart';
import 'package:buenoycerca/core/app_export.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.textInputType = TextInputType.text,
      this.maxLines,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.validator});

  TextFormFieldShape? shape;

  TextFormFieldPadding? padding;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? isObscureText;

  TextInputAction? textInputAction;

  TextInputType? textInputType;

  int? maxLines;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        style: _setFontStyle(),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(),
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.RedHatDisplayMedium14DeeporangeA400:
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
      case TextFormFieldFontStyle.RedHatDisplayBold13:
        return TextStyle(
          color: ColorConstant.indigoA200,
          fontSize: getFontSize(
            13,
          ),
          fontFamily: 'Red Hat Display',
          fontWeight: FontWeight.w700,
          height: getVerticalSize(
            1.38,
          ),
        );
      case TextFormFieldFontStyle.ManropeBold2082:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            20.82,
          ),
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w700,
          height: getVerticalSize(
            1.39,
          ),
        );
      default:
        return TextStyle(
          color: ColorConstant.gray400,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Red Hat Display',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.36,
          ),
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      case TextFormFieldShape.RoundedBorder10:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            15.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.OutlineDeeporangeA400:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.deepOrangeA400,
            width: 1,
          ),
        );
      case TextFormFieldVariant.FillIndigoA20019:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.FillIndigo10066:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.FillBluegray700cc:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.None:
        return InputBorder.none;
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case TextFormFieldVariant.OutlineDeeporangeA400:
        return ColorConstant.whiteA700;
      case TextFormFieldVariant.FillIndigoA20019:
        return ColorConstant.indigoA20019;
      case TextFormFieldVariant.FillIndigo10066:
        return ColorConstant.indigo10066;
      case TextFormFieldVariant.FillBluegray700cc:
        return ColorConstant.blueGray700Cc;
      default:
        return ColorConstant.whiteA700;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.OutlineDeeporangeA400:
        return true;
      case TextFormFieldVariant.FillIndigoA20019:
        return true;
      case TextFormFieldVariant.FillIndigo10066:
        return true;
      case TextFormFieldVariant.FillBluegray700cc:
        return true;
      case TextFormFieldVariant.None:
        return false;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingT23_1:
        return getPadding(
          top: 23,
          right: 12,
          bottom: 23,
        );
      case TextFormFieldPadding.PaddingT23_2:
        return getPadding(
          top: 23,
          bottom: 23,
        );
      case TextFormFieldPadding.PaddingAll22:
        return getPadding(
          all: 22,
        );
      case TextFormFieldPadding.PaddingT17:
        return getPadding(
          left: 13,
          top: 17,
          right: 13,
          bottom: 17,
        );
      case TextFormFieldPadding.PaddingAll4:
        return getPadding(
          all: 4,
        );
      default:
        return getPadding(
          top: 23,
          right: 23,
          bottom: 23,
        );
    }
  }
}

enum TextFormFieldShape {
  RoundedBorder15,
  RoundedBorder10,
}

enum TextFormFieldPadding {
  PaddingT23,
  PaddingT23_1,
  PaddingT23_2,
  PaddingAll22,
  PaddingT17,
  PaddingAll4,
}

enum TextFormFieldVariant {
  None,
  FillWhiteA700,
  OutlineDeeporangeA400,
  FillIndigoA20019,
  FillIndigo10066,
  FillBluegray700cc,
}

enum TextFormFieldFontStyle {
  RedHatDisplayMedium14,
  RedHatDisplayMedium14DeeporangeA400,
  RedHatDisplayBold13,
  ManropeBold2082,
}
