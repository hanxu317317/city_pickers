import 'package:flutter/material.dart';

// 公共的基本样式
class BaseStyle {
  double fontSize;
  Color color;
  Color activeColor;
  Color backgroundColor;
  double height;
  Color backgroundActiveColor;

  BaseStyle(
      {this.color,
      this.fontSize,
      this.height,
      this.activeColor,
      this.backgroundActiveColor,
      this.backgroundColor});

  BaseStyle copyWith(
      {double fontSize,
      Color color,
      double height,
      Color activeColor,
      Color backgroundColor,
      Color backgroundActiveColor}) {
//    print("copyWidth >>> fontSize: ${fontSize ?? this.fontSize}");
    return BaseStyle(
        fontSize: fontSize ?? this.fontSize,
        color: color ?? this.color,
        height: height ?? this.height,
        activeColor: activeColor ?? this.activeColor,
        backgroundColor: backgroundColor ?? this.backgroundColor,
        backgroundActiveColor:
            backgroundActiveColor ?? this.backgroundActiveColor);
  }

  BaseStyle merge(BaseStyle other) {
    if (other == null) return this;
    return copyWith(
        fontSize: other.fontSize,
        color: other.color,
        height: other.height,
        activeColor: other.activeColor,
        backgroundColor: other.backgroundColor,
        backgroundActiveColor: other.backgroundActiveColor);
  }
}
