//
// Created with Android Studio.
// User: 三帆
// Date: 10/02/2019
// Time: 21:52
// email: sanfan.hx@alibaba-inc.com
// tartget:  xxx
//

import 'dart:async';

import 'package:city_pickers/modal/base_citys.dart';
import 'package:city_pickers/modal/point.dart';
import 'package:city_pickers/modal/result.dart';
import 'package:city_pickers/src/show_types.dart';
import 'package:city_pickers/src/util.dart';
import 'package:flutter/material.dart';

class FullPage extends StatefulWidget {
  final String? locationCode;
  final ShowType showType;
  final Map<String, String> provincesData;
  final Map<String, dynamic> citiesData;

  FullPage({
    this.locationCode,
    required this.showType,
    required this.provincesData,
    required this.citiesData,
  });

  @override
  _FullPageState createState() => _FullPageState();
}

// 界面状态
enum Status {
  Province,
  City,
  Area,
  Over,
}

class HistoryPageInfo {
  Status status;
  List<Point> itemList;

  HistoryPageInfo({required this.status, required this.itemList});
}

class _FullPageState extends State<FullPage> {
  /// if pophome has been called once, this should bee true;
  /// in initState func shound set false; fixed: https://github.com/hanxu317317/city_pickers/issues/121
  bool hasPop = false;

  /// list scroll control
  late ScrollController scrollController;

  /// provinces object [Point]
  late List<Point> provinces;

  /// cityTree modal ,for building tree that root is province
  late CityTree cityTree;

  /// page current statue, show p or a or c or over
  late Status pageStatus;

  /// show items maybe province city or area;

  late List<Point> itemList;

  /// body history, the max length is three
  List<HistoryPageInfo> _history = [];

  /// the target province user selected
  late Point targetProvince;

  /// the target city user selected
  Point? targetCity;

  /// the target area user selected
  Point? targetArea;

  @override
  void initState() {
    super.initState();
    hasPop = false;
    scrollController = new ScrollController();
    provinces = new Provinces(metaInfo: widget.provincesData).provinces;
    cityTree = new CityTree(
        metaInfo: widget.citiesData, provincesInfo: widget.provincesData);
    itemList = provinces;
    pageStatus = Status.Province;
    try {
      _initLocation(widget.locationCode);
    } catch (e) {
      print('Exception details:\n 初始化地理位置信息失败, 请检查省分城市数据 \n $e');
    }
  }

  Future<bool> back() {
    HistoryPageInfo? last = _history.length > 0 ? _history.last : null;
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

  void _initLocation(String? locationCode) {
    String _locationCode;
    if (locationCode != null) {
      try {
        _locationCode = locationCode;
      } catch (e) {
        print(ArgumentError(
            "The Argument locationCode must be valid like: '100000' but get '$locationCode' "));
        return;
      }

      targetProvince = cityTree.initTreeByCode(_locationCode);
      if (targetProvince.isNull) {
        targetProvince = cityTree.initTreeByCode(provinces.first.code!);
      }
      targetProvince.children.forEach((Point _city) {
        if (_city.code == _locationCode) {
          targetCity = _city;
          targetArea = _getTargetChildFirst(_city) ?? null;
        }
        _city.children.forEach((Point _area) {
          if (_area.code == _locationCode) {
            targetCity = _city;
            targetArea = _area;
          }
        });
      });
    } else {
      targetProvince = cityTree.initTreeByCode(widget.provincesData.keys.first);
    }

    if (targetCity == null) {
      targetCity = _getTargetChildFirst(targetProvince);
    }
    if (targetArea == null) {
      targetArea = _getTargetChildFirst(targetCity!);
    }
  }

  Result _buildResult() {
    Result result = Result();
    ShowType showType = widget.showType;
    try {
      if (showType.contain(ShowType.p)) {
        result.provinceId = targetProvince.code.toString();
        result.provinceName = targetProvince.name;
      }
      if (showType.contain(ShowType.c)) {
        result.provinceId = targetProvince.code.toString();
        result.provinceName = targetProvince.name;
        result.cityId = targetCity?.code.toString();
        result.cityName = targetCity?.name;
      }
      if (showType.contain(ShowType.a)) {
        result.provinceId = targetProvince.code.toString();
        result.provinceName = targetProvince.name;
        result.cityId = targetCity?.code.toString();
        result.cityName = targetCity?.name;
        result.areaId = targetArea?.code.toString();
        result.areaName = targetArea?.name;
      }
    } catch (e) {
      print('Exception details:\n _buildResult error \n $e');
      // 此处兼容, 部分城市下无地区信息的情况
    }

    // 台湾异常数据. 需要过滤
    // if (result.provinceId == "710000") {
    //   result.cityId = null;
    //   result.cityName = null;
    //   result.areaId = null;
    //   result.areaName = null;
    // }
    return result;
  }

  Point? _getTargetChildFirst(Point target) {
    if (target == null) {
      return null;
    }
    if (target.children != null && target.children.isNotEmpty) {
      return target.children.first;
    }
    return null;
  }

  popHome() {
    if (!hasPop) {
      setState(() {
        hasPop = true;
      });
      Navigator.of(context).pop(_buildResult());
    }
  }

  _onProvinceSelect(Point province) {
    this.setState(() {
      targetProvince = cityTree.initTree(province.code!);
    });
  }

  _onAreaSelect(Point area) {
    this.setState(() {
      targetArea = area;
    });
  }

  _onCitySelect(Point city) {
    this.setState(() {
      targetCity = city;
    });
  }

  String _getSelectedId() {
    String? selectId;
    switch (pageStatus) {
      case Status.Province:
        selectId = targetProvince.code;
        break;
      case Status.City:
        selectId = targetCity?.code;
        break;
      case Status.Area:
        selectId = targetArea?.code;
        break;
      case Status.Over:
        break;
    }
    return selectId ?? '0';
  }

  /// 所有选项的点击事件入口
  /// @param targetPoint 被点击对象的point对象
  _onItemSelect(Point targetPoint) {
    _history.add(HistoryPageInfo(itemList: itemList, status: pageStatus));
    Status nextStatus = Status.Over;
    List<Point>? nextItemList;
    switch (pageStatus) {
      case Status.Province:
        _onProvinceSelect(targetPoint);
        nextStatus = Status.City;
        nextItemList = targetProvince.children;
        if (!widget.showType.contain(ShowType.c)) {
          nextStatus = Status.Over;
        }
        if (nextItemList.isEmpty) {
          targetCity = null;
          targetArea = null;
          nextStatus = Status.Over;
        }
        break;
      case Status.City:
        _onCitySelect(targetPoint);
        nextStatus = Status.Area;
        nextItemList = targetCity?.children;
        if (!widget.showType.contain(ShowType.a)) {
          nextStatus = Status.Over;
        }
        if (nextItemList == null || nextItemList.isEmpty) {
          targetArea = null;
          nextStatus = Status.Over;
        }
        break;
      case Status.Area:
        nextStatus = Status.Over;
        _onAreaSelect(targetPoint);
        break;
      case Status.Over:
        break;
    }

    setTimeout(
        milliseconds: 300,
        callback: () {
          if (nextItemList == null || nextStatus == Status.Over) {
            return popHome();
          }
          if (mounted) {
            this.setState(() {
              itemList = nextItemList!;
              pageStatus = nextStatus;
            });
            scrollController.jumpTo(0.0);
          }
        });
  }

  Widget _buildHead() {
    String title = '请选择城市';
    switch (pageStatus) {
      case Status.Province:
        break;
      case Status.City:
        title = targetProvince.name;
        break;
      case Status.Area:
        title = targetCity!.name;
        break;
      case Status.Over:
        break;
    }
    return Text(title);
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return WillPopScope(
      onWillPop: back,
      child: Scaffold(
        backgroundColor: theme.colorScheme.background,
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
          ),
        ),
      ),
    );
  }
}

class ListWidget extends StatelessWidget {
  final List<Point> itemList;
  final ScrollController controller;
  final String selectedId;
  final ValueChanged<Point> onSelect;

  ListWidget(
      {required this.itemList,
      required this.onSelect,
      required this.controller,
      required this.selectedId});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return ListView.builder(
      controller: controller,
      itemBuilder: (BuildContext context, int index) {
        Point item = itemList[index];
        return Container(
          decoration: BoxDecoration(
              // color: theme.backgroundColor,
              border: Border(
                  bottom: BorderSide(color: theme.dividerColor, width: 1.0))),
          child: ListTileTheme(
            child: ListTile(
              title: Text(item.name),
              // 这里还是不敢放开.  容易引发兼容问题
              // title: Text(item.name, style: TextStyle(color: theme.textTheme.bodyText1!.color)),
              // item 标题
              dense: true,
              // tileColor:theme.textTheme.bodyText1!.color,
              // item 直观感受是整体大小
              trailing: selectedId == item.code
                  ? Icon(Icons.check, color: theme.primaryColor)
                  : null,
              contentPadding: EdgeInsets.fromLTRB(24.0, .0, 24.0, 3.0),
              // item 内容内边距
              enabled: true,
              onTap: () {
                onSelect(itemList[index]);
              },
              // item onTap 点击事件
              onLongPress: () {},
              // item onLongPress 长按事件
              selected: selectedId == item.code, // item 是否选中状态
            ),
          ),
        );
      },
      itemCount: itemList.length,
    );
  }
}
