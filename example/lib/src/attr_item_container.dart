//
// Created with Android Studio.
// User: 三帆
// Date: 12/02/2019
// Time: 18:06
// email: sanfan.hx@alibaba-inc.com
// tartget:  xxx
//

import 'package:flutter/material.dart';

class AttrItemContainer extends StatefulWidget {
  final String title;
  final Widget editor;

  AttrItemContainer({required this.title, required this.editor});

  @override
  _AttrItemContainerState createState() => _AttrItemContainerState();
}

class _AttrItemContainerState extends State<AttrItemContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    width: 1, color: Theme.of(context).dividerColor))),
        child: Row(
          children: <Widget>[
            Text("${widget.title}"),
            Expanded(
                child: Padding(
                    padding: EdgeInsets.only(left: 30), child: widget.editor))
          ],
        ),
      ),
    );
  }
}
