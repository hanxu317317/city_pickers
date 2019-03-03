//
// Created with Android Studio.
// User: 三帆
// Date: 13/02/2019
// Time: 21:02
// email: sanfan.hx@alibaba-inc.com
// tartget:  xxx
//

import 'package:flutter/material.dart';
import 'package:city_pickers/city_pickers.dart';
//showCitiesSelector
class WorkInProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("省市县三级全屏联动"),
      ),
      body: Column(
        children: <Widget>[

          RaisedButton(
            onPressed: () async {
              Result tempResult = await CityPickers.showCitiesSelector(
                context: context,
              );
              if (tempResult == null) {
                return ;
              }
              print("result>> ${tempResult.toString()}");
            },
            child: Text("展示city picker"),
          )
        ],
      ),
    );
  }
}
