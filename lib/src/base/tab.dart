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
  final int? index;

  final ValueChanged<int>? changed;

  CountryTabPicker({
    required this.config,
    this.index,
    this.changed
  });
  List<Widget> buildTab(BuildContext context) {
      List<Widget> tabs = [];
      if (this.config != null) {
        this.config?.asMap().forEach((int index, Map<String, String> item) {
          print('index: $index');
          String name = item["name"] ?? "";

          tabs.add(Expanded(
              flex: 1,
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    // height:40,
                    child: OutlinedButton(
                        style: new ButtonStyle(
                            side: MaterialStateProperty.all(BorderSide(style: BorderStyle.none)),
                            padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(0, 5, 0 , 5)),
                            minimumSize: MaterialStateProperty.all(Size.zero),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap
                        ),
                        child: new Text(name,
                            style: new TextStyle(color: Theme.of(context).primaryColor
                            )
                        ),
                        onPressed: (){
                          if (this.changed != null) {
                            this.changed!(index);
                          }
                        }
                    ),
                  ),
                  AnimatedOpacity(
                    duration: Duration(milliseconds: 300),
                    opacity: this.index == index ? 1.0 : 0.0,
                    child: Container(
                        height: 2,
                        width: 10,
                        decoration: BoxDecoration(
                            color: Colors.red
                        )
                    ),
                  )
                ],
              )
          ));
        });
      }
      return tabs;
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
      children: this.buildTab(context),
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
    );
  }
}
