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

const double _pickerHeight = 400.0;

class PickerItem {
  String name;
  dynamic value;

  PickerItem({required this.name, this.value});
}

class Picker extends StatefulWidget {
  final List<PickerItem> items;
  final Widget target;
  final ValueChanged<PickerItem> onConfirm;

  Picker({required this.onConfirm, required this.target, required this.items});

  @override
  _PickerState createState() => _PickerState();
}

class _PickerState extends State<Picker> {
  FixedExtentScrollController scrollController =
      new FixedExtentScrollController(initialItem: 0);
  late PickerItem result;

  @override
  void initState() {
    // TODO: implement initState
    result = widget.items[0];
    super.initState();
  }

  onChange(int index) {
    this.setState(() {
      result = widget.items[index];
    });
  }

  buildPicker() {
    return CupertinoPicker.builder(
        magnification: 1.0,
        scrollController: scrollController,
        itemExtent: 40.0,
        backgroundColor: Colors.white,
        onSelectedItemChanged: onChange,
        itemBuilder: (context, index) {
          return Center(
            child: Text(
              '${widget.items[index].name}',
              maxLines: 1,
              overflow: TextOverflow.fade,
              textAlign: TextAlign.center,
            ),
          );
        },
        childCount: widget.items.length);
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
        color: Colors.white,
        padding: const EdgeInsets.all(6.0),
        alignment: Alignment.center,
        child: GestureDetector(
          onTap: () async {
            await showCupertinoModalPopup<void>(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  height: _pickerHeight,
                  padding: const EdgeInsets.only(top: 6.0),
                  color: CupertinoColors.white,
                  child: DefaultTextStyle(
                      style: const TextStyle(
                        color: CupertinoColors.black,
                        fontSize: 22.0,
                      ),
                      child: new Column(
                        children: <Widget>[
                          new Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              FlatButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: new Text(
                                  'cancle',
                                  style: new TextStyle(
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                              ),
                              FlatButton(
                                onPressed: () {
                                  Navigator.of(context).pop(result);
                                },
                                child: new Text(
                                  'confirm',
                                  style: new TextStyle(
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: _pickerHeight - 100,
                            child: buildPicker(),
                          )
                        ],
                      )),
                );
              },
            );
            widget.onConfirm(result);
          },
          child: widget.target,
        ));
  }
}
