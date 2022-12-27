//
// Created with Android Studio.
// User: 三帆
// Date: 20/02/2019
// Time: 17:28
// email: sanfan.hx@alibaba-inc.com
// tartget:  xxx
//

//import 'dart:async';

import 'package:flutter/material.dart';

typedef void AlphaChanged(String? alpha);
typedef void OnTouchStart();
typedef void OnTouchMove();
typedef void OnTouchEnd();

///Default Index data.
const List<String> ALPHAS_INDEX = const [
  "A",
  "B",
  "C",
  "D",
  "E",
  "F",
  "G",
  "H",
  "I",
  "J",
  "K",
  "L",
  "M",
  "N",
  "O",
  "P",
  "Q",
  "R",
  "S",
  "T",
  "U",
  "V",
  "W",
  "X",
  "Y",
  "Z",
  "#"
];

class Alpha extends StatefulWidget {
  double get alphaItemSize => alphaFontSize + alphaPadding.vertical;

  /// 单个字母的字体大小
  final double alphaFontSize;
  final EdgeInsetsGeometry alphaPadding;
  final List<String> alphas;

  /// 当选中的字母发生改变
  final AlphaChanged? onAlphaChange;

  final OnTouchStart? onTouchStart;
  final OnTouchMove? onTouchMove;
  final OnTouchEnd? onTouchEnd;

  /// 激活状态下的背景色
  final Color activeBgColor;

  /// 未激活状态下的背景色
  final Color bgColor;

  /// 未激活状态下字体的颜色
  final Color fontColor;

  /// 激活状态下字体的颜色
  final Color fontActiveColor;

  Alpha(
      {

      /// 字母列表的高度大小与字体大小
      this.alphaFontSize = 14,
      this.alphaPadding = const EdgeInsets.symmetric(horizontal: 4.0),

      /// 可供选择的字母集
      this.alphas = ALPHAS_INDEX,

      /// 当右侧字母集, 因触摸而产生的回调
      this.onAlphaChange,
      this.onTouchStart,
      this.onTouchMove,
      this.onTouchEnd,
      this.activeBgColor = Colors.green,
      this.bgColor = Colors.yellow,
      this.fontColor = Colors.black,
      this.fontActiveColor = Colors.yellow});

  @override
  AlphaState createState() {
    return new AlphaState();
  }
}

class AlphaState extends State<Alpha> {
//  Timer _changeTimer;

  bool isTouched = false;

  List<double> indexRange = [];

  /// 第一个字母或者分类距离global坐标系的高度
  double? _distance2Top;

  // 当触摸结束前, 最后一个字母;
  String? _lastTag;

  @override
  void initState() {
    super.initState();
    _init();
  }

  _init() {
    List alphas = widget.alphas;
    for (int i = 0; i <= alphas.length; i++) {
      indexRange.add((i) * widget.alphaItemSize);
    }
  }

  String? _getHitAlpha(offset) {
    int hit = (offset / widget.alphaItemSize).toInt();
    if (hit < 0) {
      return null;
    }
    if (hit >= widget.alphas.length) {
      return null;
    }
    return widget.alphas[hit];
  }

  _onAlphaChange([String? tag]) {
    if (widget.onAlphaChange != null && tag != _lastTag) {
      _lastTag = tag;
      widget.onAlphaChange!(tag);
    }
  }

  _touchStartEvent(String tag) {
    this.setState(() {
      isTouched = true;
    });
    if (tag != null) {
      _onAlphaChange(tag);
    }

    if (widget.onTouchStart != null && tag != null) {
      widget.onTouchStart!();
    }
  }

  _touchMoveEvent(String tag) {
    if (tag != null) {
      _onAlphaChange(tag);
    }
    if (widget.onTouchMove != null) {
      widget.onTouchMove!();
    }
  }

  _touchEndEvent() {
    this.setState(() {
      isTouched = false;
    });
    // 这里本可以不用再触发一次的. 但是为了数据的准备, 最后再触发一次
    if (_lastTag != null) {
      _onAlphaChange(_lastTag);
    }
    if (widget.onTouchEnd != null) {
      widget.onTouchEnd!();
    }
  }

  _buildAlpha() {
    List<Widget> result = [];
    for (var alpha in widget.alphas) {
      result.add(new Container(
        key: Key(alpha),
        height: widget.alphaItemSize,
        padding: widget.alphaPadding,
        child: new Text(
          alpha,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: widget.alphaFontSize,
            color: isTouched ? widget.fontActiveColor : widget.fontColor,
            height: 1.0,
          ),
        ),
      ));
    }
    return Align(
        alignment: Alignment.centerRight,
        child: Container(
          alignment: Alignment.center,
          color: isTouched ? widget.activeBgColor : widget.bgColor,
          padding: EdgeInsets.symmetric(horizontal: 4),
          child: Column(mainAxisSize: MainAxisSize.min, children: result),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onVerticalDragDown: (DragDownDetails details) {
          if (_distance2Top == null) {
            RenderBox? renderBox = context.findRenderObject() as RenderBox;
            _distance2Top = renderBox.localToGlobal(Offset.zero).dy.toInt() +
                (renderBox.size.height -
                        widget.alphaItemSize * widget.alphas.length) /
                    2;
          }

          int touchOffset2Begin =
              details.globalPosition.dy.toInt() - _distance2Top!.toInt();
          String? tag = _getHitAlpha(touchOffset2Begin);
          if (tag != null) {
            _touchStartEvent(tag);
          }
        },
        onVerticalDragUpdate: (DragUpdateDetails details) {
          int touchOffset2Begin =
              details.globalPosition.dy.toInt() - _distance2Top!.toInt();
          String? tag = _getHitAlpha(touchOffset2Begin);
          if (tag != null) {
            _touchMoveEvent(tag);
          }
        },
        onVerticalDragEnd: (DragEndDetails details) {
          _touchEndEvent();
        },
        child: _buildAlpha());
  }
}
