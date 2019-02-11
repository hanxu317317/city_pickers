//
// Created with Android Studio.
// User: 三帆
// Date: 10/02/2019
// Time: 21:52
// email: sanfan.hx@alibaba-inc.com
// tartget:  xxx
//

import 'package:flutter/material.dart';
import 'package:city_pickers/modal/point.dart';
import 'package:city_pickers/modal/base_citys.dart';
import 'package:city_pickers/src/show_types.dart';
import 'package:city_pickers/modal/result.dart';
import 'package:city_pickers/src/util.dart';
class FullPage extends StatefulWidget {
  final String locationCode;
  final ShowType showType;
  final Map<String, dynamic> provincesData;
  final Map<String, dynamic> citiesData;
  FullPage({this.locationCode = '120106', this.showType, this.provincesData, this.citiesData});
  @override
  _FullPageState createState() => _FullPageState();
}
// 界面状态
enum Status  {
  Province,
  City,
  Area
}
class HistoryPageInfo {
  Status status;
  List<Point> itemList;
  HistoryPageInfo({this.status, this.itemList});

}
class _FullPageState extends State<FullPage> {
  ScrollController scrollController;
  List<Point> provinces;
  CityTree cityTree;
  Status pageStatus;
  List<Point> itemList;
  List<HistoryPageInfo> _history = [];
  Point targetProvince;
  Point targetCity;
  Point targetArea;

  @override
  void initState() {
    super.initState();

    scrollController = new ScrollController();
    provinces = new Provinces().provinces;
    cityTree = new CityTree();
    itemList = provinces;
    pageStatus = Status.Province;

    _initLocation(widget.locationCode);
  }
  

  Future<bool> back() {
    HistoryPageInfo last = _history.length > 0 ? _history.last : null;
    if (last != null && mounted) {
      this.setState(() {
        pageStatus = last.status;
        itemList = last.itemList;
      });
      _history.removeLast();
      return Future<bool>.value(false);
    }
    return Future<bool>.value(true);
  }

  void _initLocation(String locationCode) {
    int _locationCode;
    if (locationCode != null) {
      try {
        _locationCode = int.parse(locationCode);
      } catch (e) {
        print(ArgumentError(
            "The Argument locationCode must be valid like: '100000' but get '$locationCode' "));
        return;
      }

      targetProvince = cityTree.initTreeByCode(_locationCode);

      targetProvince.child.forEach((Point _city) {
        if (_city.code == _locationCode) {
          targetCity = _city;
          targetArea = _city.child.first ?? null;
        }
        _city.child.forEach((Point _area) {
          if (_area.code == _locationCode) {
            targetCity = _city;
            targetArea = _area;
          }
        });
      });
    } else {
      targetProvince = cityTree.initTreeByCode(110000);
    }

    if (targetCity == null) {
      targetCity = targetProvince.child.first ?? Point();
    }
    if (targetArea == null) {
      targetArea = targetCity.child.first ?? Point();
    }
  }

  Result _buildResult() {
    Result result = Result();
    ShowType showType = ShowType.pca;
    try {
      if (showType.contain(ShowType.p)) {
        result.provinceId = targetProvince.code.toString();
        result.provinceName = targetProvince.name;
      }
      if (showType.contain(ShowType.c)) {
        result.cityId = targetCity.code.toString();
        result.cityName = targetCity.name;
      }
      if (showType.contain(ShowType.a)) {
        result.areaId = targetArea.code.toString();
        result.areaName = targetArea.name;
      }
    } catch (e) {
      // 此处兼容, 部分城市下无地区信息的情况
    }

    // 台湾异常数据. 需要过滤
    if (result.provinceId == "710000") {
      result.cityId = null;
      result.cityName = null;
      result.areaId = null;
      result.areaName = null;
    }
    return result;
  }
  popHome() {
    Navigator.of(context).pop(_buildResult());
  }

  _onProvinceSelect(Point province) {

    this.setState(() {
      targetProvince = cityTree.initTree(province.code);
    });
  }
  _onAreaSelect(Point area) {
    print("_onAreaSelect");
    this.setState(() {
      targetArea = area;

    });
  }
  _onCitySelect(Point city) {
    this.setState(() {
      targetCity = city;
    });
  }
  int _getSelectedId() {
    int selectId;
    switch(pageStatus) {
      case Status.Province:
        selectId = targetProvince.code;
        break;
      case Status.City:
        selectId = targetCity.code;
        break;
      case Status.Area:
        selectId = targetArea.code;
        break;
    }
    return selectId;
  }
  _onItemSelect(Point targetPoint) {
    _history.add(HistoryPageInfo(itemList: itemList, status: pageStatus));
    Status nextStatus;
    List<Point> nextItemList;
    switch(pageStatus) {
      case Status.Province:
        _onProvinceSelect(targetPoint);
        nextStatus = Status.City;
        nextItemList = targetProvince.child;
        break;
      case Status.City:
        _onCitySelect(targetPoint);
        nextStatus = Status.Area;
        nextItemList = targetCity.child;
        break;
      case Status.Area:
        _onAreaSelect(targetPoint);
        break;
    }
    setTimeout(milliseconds: 300, callback: () {
      if (nextItemList == null ) {
        return popHome();
      }
      if (mounted) {
        this.setState(() {
          itemList = nextItemList;
          pageStatus = nextStatus;
        });
        scrollController.jumpTo(0.0);
      }
    });
  }
  Widget _buildHead() {
    String title = '请选择城市';
    switch(pageStatus) {
      case Status.Province:
        break;
      case Status.City:
        title = targetProvince.name;
        break;
      case Status.Area:
        title = targetCity.name;
        break;
    }
    return Text(title);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: back,
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: _buildHead(),
          ),
          body: SafeArea(
              bottom: true,
              child: ListWidget(
                  itemList: itemList,
                  controller: scrollController,
                  onSelect: _onItemSelect,
                  selectedId: _getSelectedId(),
              )
          )
      ),
    );
  }
}

class ListWidget extends StatelessWidget {
  final List<Point> itemList;
  final ScrollController controller;
  final int selectedId;
  final ValueChanged<Point> onSelect;
  ListWidget({
    this.itemList,
    this.onSelect,
    this.controller,
    this.selectedId
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return ListView.builder(
      controller: controller,
      itemBuilder: (BuildContext context, int index) {
        Point item = itemList[index];
        return Container(
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: theme.dividerColor, width: 1.0))
          ),
          child: ListTile(
            title:  Text(item.name, style: TextStyle(color: Theme.of(context).primaryColor)), // item 标题
            dense:true,                // item 直观感受是整体大小
            trailing: selectedId == item.code ? Icon(Icons.check, color: theme.primaryColor) : null,
            contentPadding: EdgeInsets.fromLTRB(24.0, .0, 24.0, 3.0),// item 内容内边距
            enabled:true,
            onTap:() {
              onSelect(itemList[index]);
            },// item onTap 点击事件
            onLongPress:(){

            },// item onLongPress 长按事件
            selected: selectedId == item.code,     // item 是否选中状态
          ),
        );
      },
      itemCount: itemList.length,
    );
  }
}
