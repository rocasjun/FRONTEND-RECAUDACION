import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray400 = fromHex('#b0b0b0');

  static Color blueGray100 = fromHex('#d9d9d9');

  static Color blueGray400 = fromHex('#888888');

  static Color blue800 = fromHex('#0f71bc');

  static Color red600 = fromHex('#e13d3d');

  static Color red900 = fromHex('#b52626');

  static Color lightBlue50 = fromHex('#d7f3ff');

  static Color green800 = fromHex('#188e16');

  static Color black9003f = fromHex('#3f000000');

  static Color gray200 = fromHex('#efeeee');

  static Color green500 = fromHex('#55b853');

  static Color gray50 = fromHex('#fcfcfc');

  static Color greenA700 = fromHex('#00be29');

  static Color black900 = fromHex('#000000');

  static Color lightGreen600 = fromHex('#68ca46');

  static Color whiteA70001 = fromHex('#fdfdfd');

  static Color indigo900 = fromHex('#000080');

  static Color whiteA700 = fromHex('#ffffff');

  static Color deepOrangeA400 = fromHex('#ff4c00');

  static Color redA700 = fromHex('#ff0000');

  static Color pink100 = fromHex('#ecbebe');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
