import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray80007 = fromHex('#07464646');

  static Color lightGreenA700 = fromHex('#28c900');

  static Color red400 = fromHex('#f55b45');

  static Color blueGray9006c = fromHex('#6c323142');

  static Color deepOrangeA40033 = fromHex('#33ff4200');

  static Color gray9000c = fromHex('#0c241f2f');

  static Color teal500 = fromHex('#009e80');

  static Color whiteA700Ab = fromHex('#abffffff');

  static Color pink500 = fromHex('#e42b65');

  static Color blueGray900 = fromHex('#323142');

  static Color deepPurpleA200 = fromHex('#9c2cf3');

  static Color redA700 = fromHex('#ff0000');

  static Color gray70033 = fromHex('#33636363');

  static Color whiteA7008b = fromHex('#8bffffff');

  static Color gray400 = fromHex('#c9c5c4');

  static Color blueGray300 = fromHex('#8e97a5');

  static Color gray9000c01 = fromHex('#0c191c32');

  static Color amber700 = fromHex('#df9f00');

  static Color indigo10066 = fromHex('#66b3bffe');

  static Color indigoA20019 = fromHex('#194b69fd');

  static Color amber100 = fromHex('#ffe9b2');

  static Color black9000c = fromHex('#0c000000');

  static Color gray40001 = fromHex('#cacaca');

  static Color indigoA700 = fromHex('#3a48f8');

  static Color teal50026 = fromHex('#26009e80');

  static Color bluegray400 = fromHex('#888888');

  static Color gray50099 = fromHex('#999d9693');

  static Color gray10000 = fromHex('#00f5f5f5');

  static Color gray8000c = fromHex('#0c464646');

  static Color whiteA700 = fromHex('#ffffff');

  static Color deepOrange50 = fromHex('#ffe8e0');

  static Color blueGray10040 = fromHex('#40d3d1d8');

  static Color yellow70019 = fromHex('#19fcbd21');

  static Color deepOrangeA40019 = fromHex('#19ff4200');

  static Color indigoA200 = fromHex('#4b69fd');

  static Color gray300Cc = fromHex('#ccdfdfdf');

  static Color deepOrangeA40099 = fromHex('#99ff4200');

  static Color black90067 = fromHex('#67190600');

  static Color black90066 = fromHex('#661a0700');

  static Color black900 = fromHex('#190600');

  static Color blueGray40019 = fromHex('#198a959e');

  static Color blueGray9000c = fromHex('#0c2d3135');

  static Color black901 = fromHex('#000000');

  static Color gray40075 = fromHex('#75c9c5c4');

  static Color deepOrangeA400 = fromHex('#ff4201');

  static Color blueGray700Cc = fromHex('#cc515151');

  static Color gray500 = fromHex('#9d9693');

  static Color gray90042 = fromHex('#424c1300');

  static Color gray900 = fromHex('#121826');

  static Color gray300 = fromHex('#dcdcd9');

  static Color gray100 = fromHex('#f5f5f5');

  static Color whiteA70087 = fromHex('#87ffffff');

  static Color deepOrangeA40001 = fromHex('#ff4200');

  static Color indigo500 = fromHex('#4267b2');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
