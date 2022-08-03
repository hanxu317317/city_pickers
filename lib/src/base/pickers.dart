import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../util.dart';

class ScrollPicker extends StatelessWidget {
  final List<String>? itemList;
  final Key? key;
  final String? value;
  final bool isShow;
  final FixedExtentScrollController? controller;
  final ValueChanged<int> changed;
  final ItemWidgetBuilder? itemBuilder;

  // ios选择框的高度. 配合 itemBuilder中的字体使用.
  final double? itemExtent;
  // Constructor. {} here denote that they are optional values i.e you can use as: new MyCard()
  ScrollPicker(
      {this.key,
        this.controller,
        this.isShow = false,
        required this.changed,
        this.itemList,
        this.itemExtent,
        this.itemBuilder,
        this.value});

  @override
  Widget build(BuildContext context) {
    if (!this.isShow) {
      return Container();
    }
    if (this.itemList == null || this.itemList!.isEmpty) {
      return new Expanded(
        child: Container(),
      );
    }
    return new Expanded(
      child: new Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          padding: const EdgeInsets.all(6.0),
          alignment: Alignment.center,
          child: CupertinoPicker.builder(
              magnification: 1.0,
              itemExtent: this.itemExtent ?? 40.0,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              scrollController: this.controller,
              onSelectedItemChanged: (index) {
                this.changed(index);
              },
              itemBuilder: (context, index) {
                if (this.itemBuilder != null) {
                  return this.itemBuilder!(
                      this.itemList![index], this.itemList!, index);
                }

                String text = this.itemList![index];

                // TODO 根据字数调整字体大小，不够优雅，可以改为根据函数计算字体大小
                double fontSize = 13;
                if (text != '') {
                  int len = text.length;
                  if (len >= 1 && len <= 3) {
                    fontSize = 20;
                  } else if (len > 3 && len <= 4) {
                    fontSize = 18;
                  } else if (len > 4 && len <= 5) {
                    fontSize = 16;
                  } else if (len > 5 && len <= 6) {
                    fontSize = 12;
                  } else if (len > 6 && len <= 9) {
                    fontSize = 10;
                  } else if (len > 9) {
                    fontSize = 7;
                  }
                }
                return Center(
                  child: Text(
                    '$text',
                    overflow: TextOverflow.ellipsis, // 字数过多时显示省略号
                    maxLines: 1,
                    style: TextStyle(fontSize: fontSize),
                  ),
                );
              },
              childCount: this.itemList!.length)),
      flex: 1,
    );
  }
}
