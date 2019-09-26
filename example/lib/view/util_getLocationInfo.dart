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

import '../src/attr_item_container.dart';

class UtilGetLocationInfo extends StatefulWidget {
  _Demo createState() => _Demo();
}

class _Demo extends State<UtilGetLocationInfo> {
  CityPickerUtil cityPickerUtils = CityPickers.utils();
  Result result = new Result();
  String code = '110101';

  buttonHandle() {
    print("code::: $code");
    this.setState(() {
      result = cityPickerUtils.getAreaResultByCode(code);
      print("result>>>> ${result.toString()}");
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("解析locationCode"),
    ),
    body: Column(
      children: <Widget>[
        AttrItemContainer(
          title: '标题1111',
          editor: TextField(
            keyboardType: TextInputType.number,
            autofocus: false,
            controller: TextEditingController(text: code),
            onChanged: (String value) {
              this.setState(() {
                code = value;
              });
            },
          ),
        ),
        Text("地址信息为: ${result.toString()}"),
        RaisedButton(child: Text('touch me 解析 $code '),onPressed: this.buttonHandle)
      ],
    ));
  }
}
