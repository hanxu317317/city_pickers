//
// Created with Android Studio.
// User: 三帆
// Date: 12/02/2019
// Time: 18:22
// email: sanfan.hx@alibaba-inc.com
// tartget:  xxx
//

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class ColorPickers extends StatefulWidget {
  final Widget target;
  final Color initColor;
  final ValueChanged<Color> onConfirm;

  ColorPickers({this.initColor, this.onConfirm, @required this.target});

  @override
  _ColorPickersState createState() => _ColorPickersState();
}

class _ColorPickersState extends State<ColorPickers> {
  Color pickerColor = Colors.red;

  Color currentColor = Colors.red;

  @override
  void initState() {
    super.initState();
    pickerColor = widget.initColor ?? Colors.red;
    currentColor = widget.initColor ?? Colors.red;
  }

  onChangeColor(Color color) {
    this.setState(() {
      pickerColor = color;
    });
  }

//  showColorPicker(BuildContext context) async  {
//    showDialog(
//      context: context,
//      child: AlertDialog(
//        title: const Text('Pick a color!'),
//        content: SingleChildScrollView(
//          child: ColorPicker(
//            pickerColor: pickerColor,
//            onColorChanged: onChangeColor,
//            enableLabel: true,
//            pickerAreaHeightPercent: 0.8,
//          ),
//        ),
//        actions: <Widget>[
//          FlatButton(
//            child: const Text('Got it'),
//            onPressed: () {
//              setState(() => currentColor = pickerColor);
//              Navigator.of(context).pop(currentColor);
//            },
//          ),
//        ],
//      ),
//    );
//  }

  @override
  Widget build(BuildContext context) {
    return new Container(
        color: Colors.white,
        padding: const EdgeInsets.all(6.0),
        alignment: Alignment.center,
        child: GestureDetector(
          onTap: () async {
            Color color = await showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('Pick a color!'),
                  content: SingleChildScrollView(
                    child: ColorPicker(
                      pickerColor: pickerColor,
                      onColorChanged: onChangeColor,
                      enableLabel: true,
                      pickerAreaHeightPercent: 0.8,
                    ),
                  ),
                  actions: <Widget>[
                    FlatButton(
                      child: const Text('Got it'),
                      onPressed: () {
                        setState(() => currentColor = pickerColor);
                        Navigator.of(context).pop(currentColor);
                      },
                    ),
                  ],
                );
              }
            );
            widget.onConfirm(color);
          },
          child: widget.target,
        ));
  }
}
