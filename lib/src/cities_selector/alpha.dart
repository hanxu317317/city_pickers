//
// Created with Android Studio.
// User: 三帆
// Date: 20/02/2019
// Time: 17:28
// email: sanfan.hx@alibaba-inc.com
// tartget:  xxx
//

import 'package:flutter/material.dart';
import 'dart:async';

typedef void AlphaChanged(String alpha);
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
  static List<String> _alphas = ALPHAS_INDEX;

  /// 单个字母的字体大小
  final double alphaItemSize;
  final List<String> alphas;

  /// 当选中的字母发生改变
  final AlphaChanged onAlphaChange;

  final OnTouchStart onTouchStart;
  final OnTouchMove onTouchMove;
  final OnTouchEnd onTouchEnd;

  Alpha({
    this.alphaItemSize = 14,
    this.alphas = ALPHAS_INDEX,
    this.onAlphaChange,
    this.onTouchStart,
    this.onTouchMove,
    this.onTouchEnd

  });
  @override
  AlphaState createState() {
    return new AlphaState();
  }
}

class AlphaState extends State<Alpha> {
  Timer _changeTimer;

  bool isTouched = false;
  List<double> indexRange = [];
  Offset _distance2Top;
  // 当触摸结束前, 最后一个字母;
  String _lastTag;

  @override
  void initState() {
    super.initState();
    _init();
  }

  _init() {
    List alphas = widget.alphas;
    indexRange.add(0);
    for (int i = 0; i < alphas.length; i++) {
      indexRange.add((i + 1) * widget.alphaItemSize);
    }
  }
  String _getHitAlpha(offset) {
    int hit = (offset / widget.alphaItemSize).toInt();
    if (hit < 0) {
      return null;
    }
    if (hit >= widget.alphas.length) {
      return null;
    }
    return widget.alphas[hit];
  }

  _onAlphaChange([String tag]) {
    if (widget.onAlphaChange != null && tag != _lastTag) {
      _lastTag = tag;
      widget.onAlphaChange(tag);
    }

  }

  _touchEvent(String tag) {
    this.setState(() {
      isTouched = true;
    });
    _onAlphaChange(tag);
    if (widget.onTouchStart != null) {
      widget.onTouchStart();
    }

  }
  _moveEvent(String tag) {

    _onAlphaChange(tag);
    if (widget.onTouchMove != null) {
      widget.onTouchMove();
    }
  }
  _moveOverEvent() {
    this.setState(() {
      isTouched = false;
    });
    _onAlphaChange(_lastTag);
    if (widget.onTouchEnd != null) {
      widget.onTouchEnd();
    }
  }
  _buildAlpha() {
    List<Widget> result = [];
    for (var alpha in widget.alphas) {
      result.add(new SizedBox(
        key: Key(alpha),
        height: widget.alphaItemSize,
        child: new Text(alpha.toUpperCase(), textAlign: TextAlign.center, style: TextStyle(fontSize: widget.alphaItemSize, color: Colors.red),),
      ));
    }


    return Column(
        mainAxisSize: MainAxisSize.min,
        children: result
    );
  }

  @override
  Widget build(BuildContext context) {
//    print("indexRange ${indexRange}");
    return GestureDetector(
      onVerticalDragDown: (DragDownDetails details) {
        if (_distance2Top == null ) {
          RenderBox renderBox = context.findRenderObject();
          _distance2Top = renderBox.localToGlobal(Offset.zero);
        }

        int touchOffset2Begin = details.globalPosition.dy.toInt() - _distance2Top.dy.toInt();
        String tag = _getHitAlpha(touchOffset2Begin);
        if (tag != null) {
          _touchEvent(tag);
        }
      },
      onVerticalDragUpdate: (DragUpdateDetails details) {
        int touchOffset2Begin = details.globalPosition.dy.toInt() - _distance2Top.dy.toInt();
        String tag = _getHitAlpha(touchOffset2Begin);
        if (tag != null) {
          _moveEvent(tag);
        }
      },
      onVerticalDragEnd: (DragEndDetails details) {
        _moveOverEvent();
      },
      child: _buildAlpha()
    );
  }
}
