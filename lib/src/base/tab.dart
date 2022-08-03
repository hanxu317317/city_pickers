import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../util.dart';

/// config = [
///   {"name": "中国", "value": "china"},
///   {"name": "海外", "value: "other""},
/// ]
class CountryTabPicker extends StatelessWidget {
  /// tab内容
  final List<Map<String, String>>? config;

  /// 默认选中内容
  final int? defaultIndex;

  final ValueChanged<int>? changed;

  CountryTabPicker({
    required this.config,
    this.defaultIndex,
    this.changed
  });

  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        new Column(
          children: [
            RichText(
                text: TextSpan(
                  text: "中国",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.red,
                  ),
                )
            ),
            Container(
                height: 2,
                width: 10,
                decoration: BoxDecoration(color: Colors.green, boxShadow: <BoxShadow>[
                  BoxShadow(
                    color:Colors.red,
                  ),
                ]
                )
            )
          ],
        ),
        Text('this is 2'),
      ],
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
    );
  }
}
