//
// Created with Android Studio.
// User: 三帆
// Date: 13/02/2019
// Time: 21:02
// email: sanfan.hx@alibaba-inc.com
// tartget:  xxx
//

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:city_pickers/city_pickers.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

import '../src/color_picker.dart';
import '../src/attr_item_container.dart';
//showCitiesSelector
class WorkInProgress extends StatefulWidget {
  @override
  WorkInProgressState createState() {
    return new WorkInProgressState();
  }
}

class WorkInProgressState extends State<WorkInProgress> {
  String title = '城市选择';
  Color tagBgColor = Colors.black45;
  Color tagBgActiveColor = Colors.black87;
  Color tagFontColor = Colors.white12;
  Color tagFontActiveColor = Colors.red;

  double tagBarFontSize = 12;

  double cityItemFontSize = 16;

  double topIndexHeight = 40;

  double topIndexFontSize = 13;

  Color topIndexFontColor = Colors.red;

  Color topIndexBgColor = Colors.black87;

  Color itemSelectFontColor = Colors.cyan;

  Color itemSelectBgColor = Colors.blueGrey;

  Color itemFontColor = Colors.black;

  Widget _buildTopIndexFontSize() {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: CupertinoSlider(
            value: topIndexFontSize,//实际进度的位置
            min: 10,
            max: 30,
            divisions: 20,
            activeColor: Colors.blue,//进度中活动部分的颜色
            onChanged: (double){
              setState(() {
                topIndexFontSize = double;
              });
            },
          ),
        ),
        Text("$topIndexFontSize")
      ],
    );
  }

  Widget _buildTopIndexHeight() {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: CupertinoSlider(
            value: topIndexHeight,//实际进度的位置
            min: 40,
            max: 100,
            divisions: 60,
            activeColor: Colors.blue,//进度中活动部分的颜色
            onChanged: (double){
              setState(() {
                topIndexHeight = double;
              });
            },
          ),
        ),
        Text("$topIndexHeight")
      ],
    );
  }

  Widget _buildBarFontSize() {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: CupertinoSlider(
            value: tagBarFontSize,//实际进度的位置
            min: 12,
            max: 40,
            divisions: 28,
            activeColor: Colors.blue,//进度中活动部分的颜色
            onChanged: (double){
              setState(() {
                tagBarFontSize = double;
              });
            },
          ),
        ),
        Text("$tagBarFontSize")
      ],
    );
  }

  Widget _buildCityItemFontSize() {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: CupertinoSlider(
            value: cityItemFontSize,//实际进度的位置
            min: 12,
            max: 50,
            divisions: 38,
            activeColor: Colors.blue,//进度中活动部分的颜色
            onChanged: (double){
              setState(() {
                cityItemFontSize = double;
              });
            },
          ),
        ),
        Text("$cityItemFontSize")
      ],
    );
  }
  toggle(BuildContext context) async {
    Result tempResult = await CityPickers.showCitiesSelector(
      context: context,
      locationCode: '100100',
      tagBarActiveColor: tagBgActiveColor,
      tagBarFontActiveColor: tagFontActiveColor,
      tagBarBarColor: tagBgColor,
      tagBarFontColor: tagFontColor,
      tagBarFontSize: tagBarFontSize,
      cityItemFontSize: cityItemFontSize,
      topIndexFontSize: topIndexFontSize,
      topIndexHeight: topIndexHeight,
      topIndexFontColor: topIndexFontColor,
      topIndexBgColor: topIndexBgColor,
      itemFontColor: itemFontColor,
      itemSelectFontColor: itemSelectFontColor
    );
    if (tempResult == null) {
      return ;
    }
    print("result>> ${tempResult.toString()}");
  }

  handleOnTitleChanged(String value) {
    this.setState(() {
      title = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("省市县三级全屏联动"),
      ),
      body: Column(
        children: <Widget>[
          AttrItemContainer(
            title: '标题',
            editor: TextField(
              controller: TextEditingController(text: title),
            ),
          ),
          AttrItemContainer(
            title: 'tag集颜色',
            editor: ColorPickers(
              target: Text('选择颜色', style: TextStyle(color: tagBgColor)),
              initColor: tagBgColor,
              onConfirm: (Color color)  {
                this.setState(() {
                  tagBgColor = color;
                });
              },
            ),
          ),
          AttrItemContainer(
            title: 'tag集激活颜色',
            editor: ColorPickers(
              target: Text('选择颜色', style: TextStyle(color: tagBgActiveColor)),
              initColor: tagBgActiveColor,
              onConfirm: (Color color)  {
                this.setState(() {
                  tagBgActiveColor = color;
                });
              },
            ),
          ),
          AttrItemContainer(
            title: 'tag集字体颜色',
            editor: ColorPickers(
              target: Text('选择颜色', style: TextStyle(color: tagFontColor)),
              initColor: tagFontColor,
              onConfirm: (Color color)  {
                this.setState(() {
                  tagFontColor = color;
                });
              },
            ),
          ),
          AttrItemContainer(
            title: 'tag集字体激活颜色',
            editor: ColorPickers(
              target: Text('选择颜色', style: TextStyle(color: tagFontActiveColor)),
              initColor: tagFontActiveColor,
              onConfirm: (Color color)  {
                this.setState(() {
                  tagFontActiveColor = color;
                });
              },
            ),
          ),
          AttrItemContainer(
            title: 'tag集字体大小',
            editor:_buildBarFontSize()
          ),
          AttrItemContainer(
              title: '城市item字体大小',
              editor:_buildCityItemFontSize()
          ),

          AttrItemContainer(
              title: '顶部tag分类高度',
              editor:_buildTopIndexHeight()
          ),

          AttrItemContainer(
//              topIndexFontSize
              title: '顶部tag分类字体大小',
              editor:_buildTopIndexFontSize()
          ),

          AttrItemContainer(
//              topIndexFontSize
              title: '顶部tag分类字体背景颜色',
            editor: ColorPickers(
              target: Text('选择颜色', style: TextStyle(color: topIndexFontColor)),
              initColor: topIndexFontColor,
              onConfirm: (Color color)  {
                this.setState(() {
                  topIndexFontColor = color;
                });
              },
            ),
          ),
          AttrItemContainer(
            title: '顶部tag分类背景颜色',
            editor: ColorPickers(
              target: Text('选择颜色', style: TextStyle(color: topIndexBgColor)),
              initColor: topIndexBgColor,
              onConfirm: (Color color)  {
                this.setState(() {
                  topIndexBgColor = color;
                });
              },
            ),
          ),

          AttrItemContainer(
            title: '城市item字体颜色',
            editor: ColorPickers(
              target: Text('选择颜色', style: TextStyle(color: itemFontColor)),
              initColor: itemFontColor,
              onConfirm: (Color color)  {
                this.setState(() {
                  itemFontColor = color;
                });
              },
            ),
          ),
          AttrItemContainer(
            title: '城市item选中字体颜色',
            editor: ColorPickers(
              target: Text('选择颜色', style: TextStyle(color: itemSelectFontColor)),
              initColor: itemSelectFontColor,
              onConfirm: (Color color)  {
                this.setState(() {
                  itemSelectFontColor = color;
                });
              },
            ),
          ),
          AttrItemContainer(
            title: '城市item选中背景颜色',
            editor: ColorPickers(
              target: Text('选择颜色', style: TextStyle(color: itemSelectBgColor)),
              initColor: itemSelectBgColor,
              onConfirm: (Color color)  {
                this.setState(() {
                  itemSelectBgColor = color;
                });
              },
            ),
          ),

          RaisedButton(
            child: Text('呼出'),
            onPressed: () {
              toggle(context);
            },
          )
        ],
      ),
    );
  }
}

