//
// Created with Android Studio.
// User: 三帆
// Date: 09/05/2019
// Time: 20:08
// email: sanfan.hx@alibaba-inc.com
// tartget:  xxx
//

import 'package:flutter/material.dart';
import 'package:city_pickers/city_pickers.dart';

class UtilGetLocationInfo extends StatefulWidget {
  _Demo createState() => _Demo();
}

class _Demo extends State<UtilGetLocationInfo> {
  CityPickerUtil cityPickerUtils = CityPickers.utils();
  Result result = new Result();

  buttonHandle() {

    this.setState(() {
      result = cityPickerUtils.getAreaResultByCode('110100');
    });
    print("result>>>> ${result.toString()}");
  }
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("解析locationCode"),
        ),
        body: Column(
          children: <Widget>[
            Text("地址信息为: ${result.toString()}"),
            RaisedButton(child: Text('touch me 解析 110100 '),onPressed: this.buttonHandle)
          ],
        ));
  }
}
