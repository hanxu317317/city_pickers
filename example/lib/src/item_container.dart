//
// Created with Android Studio.
// User: 三帆
// Date: 12/02/2019
// Time: 16:29
// email: sanfan.hx@alibaba-inc.com
// tartget:  xxx
//

import 'package:flutter/material.dart';

class ItemContainer extends StatefulWidget {
  final List itemList;

  ItemContainer({required this.itemList});

  @override
  _ItemContainerState createState() => _ItemContainerState();
}

class _ItemContainerState extends State<ItemContainer> {
  _buildWidgetContainer() {
    List lists = widget.itemList;
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, //每行3个
          mainAxisSpacing: 10.0, //主轴(竖直)方向间距
          crossAxisSpacing: 0.0, //纵轴(水平)方向间距
          childAspectRatio: 1.0 //纵轴缩放比例
          ),
      itemCount: lists.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            Navigator.pushNamed(context, lists[index]['routerName']);
          },
          child: Container(
            decoration: new BoxDecoration(
                border: (index + 1) % 3 != 0
                    ? Border(
                        right: BorderSide(
                            color: Theme.of(context).dividerColor, width: 1.0))
                    : null),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(lists[index]['icon'],
                    color: Theme.of(context).primaryColor),
                SizedBox(
                  height: 8.0,
                ),
                Text(lists[index]['name']),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: Stack(
        children: <Widget>[
          Container(
            width: screenWidth - 20,
            height: screenHeight,
            margin: const EdgeInsets.only(top: 30.0, bottom: 0.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  width: screenWidth - 20,
                  padding: const EdgeInsets.only(left: 65.0, top: 3.0),
                  height: 30.0,
                  child: Text(
                    "Citypicers",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 18.0,
                    ),
                  ),
                ),
                Expanded(
                  child: _buildWidgetContainer(),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0.0,
            top: 0.0,
            child: Container(
              height: 60.0,
              width: 60.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(23.0),
                  ),
                  height: 46.0,
                  width: 46.0,
                  child: Icon(
                    Icons.streetview,
                    color: Colors.white,
                    size: 30.0,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
