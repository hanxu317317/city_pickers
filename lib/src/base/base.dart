import 'dart:async';

import 'package:city_pickers/modal/base_citys.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../modal/point.dart';
import '../../modal/result.dart';
import '../mod/inherit_process.dart';
import '../show_types.dart';
import '../util.dart';

class BaseView extends StatefulWidget {
  final double progress;
  final String locationCode;
  final ShowType showType;
  final Map<String, dynamic> provincesData;
  final Map<String, dynamic> citiesData;
  final ItemWidgetBuilder itemBuilder;

  /// 是否对数据进行排序
  final bool isSort;

  /// ios选择框的高度. 配合 itemBuilder中的字体使用.
  final double itemExtent;

  /// 容器高度
  final double height;

  /// 取消按钮的Widget
  /// 当用户设置该属性. 会优先使用用户设置的widget, 否则使用代码中默认的文本, 使用primary主题色
  final Widget cancelWidget;

  /// 确认按钮的widget
  /// 当用户设置该属性. 会优先使用用户设置的widget, 否则使用代码中默认的文本, 使用primary主题色
  final Widget confirmWidget;

  BaseView(
      {this.progress,
      this.showType,
      this.height,
      this.locationCode,
      this.citiesData,
      this.provincesData,
      this.itemBuilder,
      this.itemExtent,
      this.cancelWidget,
      this.confirmWidget,
      this.isSort})
      : assert(!(itemBuilder != null && itemExtent == null),
            "\ritemExtent could't be null if itemBuilder exits");

  _BaseView createState() => _BaseView();
}

class _BaseView extends State<BaseView> {
  Timer _changeTimer;
  bool _resetControllerOnce = false;
  FixedExtentScrollController provinceController;
  FixedExtentScrollController cityController;
  FixedExtentScrollController areaController;
  FixedExtentScrollController villageController;// 增加第4级(村/镇)选择

  // 所有省的列表. 因为性能等综合原因,
  // 没有一次性构建整个以国为根的树. 动态的构建以省为根的树, 效率高.
  List<Point> provinces;
  CityTree cityTree;

  Point targetProvince;
  Point targetCity;
  Point targetArea;
  Point targetVillage;// 增加第4级(村/镇)选择

  @override
  void initState() {
    super.initState();

    provinces =
        new Provinces(metaInfo: widget.provincesData, sort: widget.isSort)
            .provinces;

    cityTree = new CityTree(
        metaInfo: widget.citiesData, provincesInfo: widget.provincesData);

    try {
      _initLocation(widget.locationCode);
    } catch (e) {
      print('Exception details:\n 初始化地理位置信息失败, 请检查省分城市数据 \n $e');
    }
    _initController();
  }

  void dispose() {
    provinceController.dispose();
    cityController.dispose();
    areaController.dispose();
    villageController.dispose();// 增加第4级(村/镇)选择
    if (_changeTimer != null && _changeTimer.isActive) {
      _changeTimer.cancel();
    }
    super.dispose();
  }

  // 初始化controller, 为了使给定的默认值, 在选框的中心位置
  void _initController() {
    provinceController = new FixedExtentScrollController(
        initialItem:
            provinces.indexWhere((Point p) => p.code == targetProvince.code));

    cityController = new FixedExtentScrollController(
        initialItem: targetProvince.child
            .indexWhere((Point p) => p.code == targetCity.code));

    areaController = new FixedExtentScrollController(
        initialItem: targetCity.child
            .indexWhere((Point p) => p.code == targetArea.code));

    // 增加第4级(村/镇)选择
    villageController = new FixedExtentScrollController(
        initialItem: targetArea.child
            .indexWhere((Point p) => p.code == targetVillage.code));
  }

  // 重置Controller的原因在于, 无法手动去更改initialItem, 也无法通过
  // jumpTo or animateTo去更改, 强行更改, 会触发 _onProvinceChange  _onCityChange 与 _onAreacChange
  // 只为覆盖初始化化的参数initialItem
  void _resetController() {
    if (_resetControllerOnce) return;
    provinceController = new FixedExtentScrollController(initialItem: 0);

    cityController = new FixedExtentScrollController(initialItem: 0);
    areaController = new FixedExtentScrollController(initialItem: 0);
    villageController = new FixedExtentScrollController(initialItem: 0);// 增加第4级(村/镇)选择
    _resetControllerOnce = true;
  }

  // initialize tree by locationCode
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

      /// 为用户给出的locationCode不正确做一个容错
      if (targetProvince.isNull) {
        targetProvince = cityTree.initTreeByCode(provinces.first.code);
      }
      targetProvince.child.forEach((Point _city) {
        if (_city.code == _locationCode) {
          targetCity = _city;
          targetArea = _getTargetChildFirst(_city);
          // 增加第4级(村/镇)选择
          targetVillage = _getTargetChildFirst(targetArea);
        }
        _city.child.forEach((Point _area) {
          if (_area.code == _locationCode) {
            targetCity = _city;
            targetArea = _area;
            // 增加第4级(村/镇)选择
            targetVillage = _getTargetChildFirst(_area);
          }
          _area.child?.forEach((Point _village) {
            if (_village.code == _locationCode) {
              targetCity = _city;
              targetArea = _area;
              // 增加第4级(村/镇)选择
              targetVillage = _village;
            }
          });
        });
      });
    } else {
      /// 本来默认想定在北京, 但是由于有可能出现用户的省份数据为不包含北京, 所以采用第一个省份做为初始
      targetProvince =
          cityTree.initTreeByCode(int.parse(widget.provincesData.keys.first));
    }
    // 尝试试图匹配到下一个级别的第一个,
    if (targetCity == null) {
      targetCity = _getTargetChildFirst(targetProvince);
    }
    // 尝试试图匹配到下一个级别的第一个,
    if (targetArea == null) {
      targetArea = _getTargetChildFirst(targetCity);
    }
    // 增加第4级(村/镇)选择
    // 尝试试图匹配到下一个级别的第一个,
    if (targetVillage == null) {
      targetVillage = _getTargetChildFirst(targetArea);
    }
  }

  Point _getTargetChildFirst(Point target) {
    if (target == null) {
      return null;
    }
    if (target.child != null && target.child.isNotEmpty) {
      return target.child.first;
    }
    return null;
  }

  // 通过选中的省份, 构建以省份为根节点的树型结构
  List<String> getCityItemList() {
    List<String> result = [];
    if (targetProvince != null) {
      result.addAll(targetProvince.child.toList().map((p) => p.name).toList());
    }
    return result;
  }

  List<String> getAreaItemList() {
    List<String> result = [];

    if (targetCity != null) {
      result.addAll(targetCity.child.toList().map((p) => p.name).toList());
    }
    return result;
  }

  // 增加第4级(村/镇)选择
  List<String> getVillageItemList() {
    List<String> result = [];

    if (targetArea != null) {
      result.addAll(targetArea.child.toList().map((p) => p.name).toList());
    }
    return result;
  }

  // province change handle
  // 加入延时处理, 减少构建树的消耗
  _onProvinceChange(Point _province) {
    if (_changeTimer != null && _changeTimer.isActive) {
      _changeTimer.cancel();
    }
    _changeTimer = new Timer(Duration(milliseconds: 500), () {
      Point _provinceTree =
          cityTree.initTree(int.parse(_province.code.toString()));
      setState(() {
        targetProvince = _provinceTree;
        targetCity = _getTargetChildFirst(_provinceTree);
        targetArea = _getTargetChildFirst(targetCity);
        targetVillage = _getTargetChildFirst(targetArea);// 增加第4级(村/镇)选择
        _resetController();
      });
    });
  }

  _onCityChange(Point _targetCity) {
    if (_changeTimer != null && _changeTimer.isActive) {
      _changeTimer.cancel();
    }
    _changeTimer = new Timer(Duration(milliseconds: 500), () {
      if (!mounted) return;
      setState(() {
        targetCity = _targetCity;
        targetArea = _getTargetChildFirst(targetCity);
      });
    });
    _resetController();
  }

  _onAreaChange(Point _targetArea) {
    if (_changeTimer != null && _changeTimer.isActive) {
      _changeTimer.cancel();
    }
    _changeTimer = new Timer(Duration(milliseconds: 500), () {
      if (!mounted) return;
      setState(() {
        targetArea = _targetArea;
      });
    });
  }

  // 增加第4级(村/镇)选择
  _onVillageChange(Point _targetVillage) {
    if (_changeTimer != null && _changeTimer.isActive) {
      _changeTimer.cancel();
    }
    _changeTimer = new Timer(Duration(milliseconds: 500), () {
      if (!mounted) return;
      setState(() {
        targetVillage = _targetVillage;
      });
    });
  }

  Result _buildResult() {
    Result result = Result();
    ShowType showType = widget.showType;
    if (showType.contain(ShowType.p)) {
      result.provinceId = targetProvince.code.toString();
      result.provinceName = targetProvince.name;
    }
    if (showType.contain(ShowType.c)) {
      result.provinceId = targetProvince.code.toString();
      result.provinceName = targetProvince.name;
      result.cityId = targetCity != null ? targetCity.code.toString() : null;
      result.cityName = targetCity != null ? targetCity.name : null;
    }
    if (showType.contain(ShowType.a)) {
      result.provinceId = targetProvince.code.toString();
      result.provinceName = targetProvince.name;
      result.cityId = targetCity != null ? targetCity.code.toString() : null;
      result.cityName = targetCity != null ? targetCity.name : null;
      result.areaId = targetArea != null ? targetArea.code.toString() : null;
      result.areaName = targetArea != null ? targetArea.name : null;
    }

    // 增加第4级(村/镇)选择
    if (showType.contain(ShowType.v)) {
      result.provinceId = targetProvince.code.toString();
      result.provinceName = targetProvince.name;
      result.cityId = targetCity != null ? targetCity.code.toString() : null;
      result.cityName = targetCity != null ? targetCity.name : null;
      result.areaId = targetArea != null ? targetArea.code.toString() : null;
      result.areaName = targetArea != null ? targetArea.name : null;
      result.villageId = targetVillage != null ? targetVillage.code.toString() : null;
      result.villageName = targetVillage != null ? targetVillage.name : null;
    }
    // 台湾异常数据. 需要过滤
    // if (result.provinceId == "710000") {
    //   result.cityId = null;
    //   result.cityName = null;
    //   result.areaId = null;
    //   result.areaName = null;
    //   result.villageId = null;
    //   result.villageName = null;
    // }
    return result;
  }

  Widget _bottomBuild() {
    return new Container(
        width: double.infinity,
        color: Theme.of(context).scaffoldBackgroundColor,
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Row(
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: widget.cancelWidget ??
                      new Text(
                        '取消',
                        style: new TextStyle(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.pop(context, _buildResult());
                  },
                  child: widget.confirmWidget ??
                      new Text(
                        '确定',
                        style: new TextStyle(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                ),
              ],
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
            Expanded(
              child: new Row(
                children: <Widget>[
                  new _MyCityPicker(
                    key: Key('province'),
                    isShow: widget.showType.contain(ShowType.p),
                    height: widget.height,
                    controller: provinceController,
                    itemBuilder: widget.itemBuilder,
                    itemExtent: widget.itemExtent,
                    value: targetProvince.name,
                    itemList: provinces.toList().map((v) => v.name).toList(),
                    changed: (index) {
                      _onProvinceChange(provinces[index]);
                    },
                  ),
                  new _MyCityPicker(
                    key: Key('citys $targetProvince'),
                    // 这个属性是为了强制刷新
                    isShow: widget.showType.contain(ShowType.c),
                    controller: cityController,
                    itemBuilder: widget.itemBuilder,
                    itemExtent: widget.itemExtent,
                    height: widget.height,
                    value: targetCity == null ? null : targetCity.name,
                    itemList: getCityItemList(),
                    changed: (index) {
                      _onCityChange(targetProvince.child[index]);
                    },
                  ),
                  new _MyCityPicker(
                    key: Key('towns $targetCity'),
                    isShow: widget.showType.contain(ShowType.a),
                    controller: areaController,
                    itemBuilder: widget.itemBuilder,
                    itemExtent: widget.itemExtent,
                    value: targetArea == null ? null : targetArea.name,
                    height: widget.height,
                    itemList: getAreaItemList(),
                    changed: (index) {
                      _onAreaChange(targetCity.child[index]);
                    },
                  ),
                  new _MyCityPicker(// 增加第4级(村/镇)选择
                    key: Key('villages $targetArea'),
                    isShow: widget.showType.contain(ShowType.v),
                    controller: villageController,
                    itemBuilder: widget.itemBuilder,
                    itemExtent: widget.itemExtent,
                    value: targetVillage == null ? null : targetVillage.name,
                    height: widget.height,
                    itemList: getVillageItemList(),
                    changed: (index) {
                      _onVillageChange(targetArea.child[index]);
                    },
                  )
                ],
              ),
            )
          ],
        ));
  }

  Widget build(BuildContext context) {
    final route = InheritRouteWidget.of(context).router;
    return new AnimatedBuilder(
      animation: route.animation,
      builder: (BuildContext context, Widget child) {
        return new CustomSingleChildLayout(
          delegate: _WrapLayout(
              progress: route.animation.value, height: widget.height),
          child: new GestureDetector(
            child: new Material(
              color: Colors.transparent,
              child:
                  new Container(width: double.infinity, child: _bottomBuild()),
            ),
          ),
        );
      },
    );
  }
}

class _MyCityPicker extends StatefulWidget {
  final List<String> itemList;
  final Key key;
  final String value;
  final bool isShow;
  final FixedExtentScrollController controller;
  final ValueChanged<int> changed;
  final double height;
  final ItemWidgetBuilder itemBuilder;

  // ios选择框的高度. 配合 itemBuilder中的字体使用.
  final double itemExtent;

  _MyCityPicker(
      {this.key,
      this.controller,
      this.isShow = false,
      this.changed,
      this.height,
      this.itemList,
      this.itemExtent,
      this.itemBuilder,
      this.value});

  @override
  State createState() {
    return new _MyCityPickerState();
  }
}

class _MyCityPickerState extends State<_MyCityPicker> {
  List<Widget> children;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.isShow) {
      return Container();
    }
    if (widget.itemList == null || widget.itemList.isEmpty) {
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
              itemExtent: widget.itemExtent ?? 40.0,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              scrollController: widget.controller,
              onSelectedItemChanged: (index) {
                widget.changed(index);
              },
              itemBuilder: (context, index) {
                if (widget.itemBuilder != null) {
                  return widget.itemBuilder(
                      widget.itemList[index], widget.itemList, index);
                }

                String text = widget.itemList[index];

                // TODO 根据字数调整字体大小，不够优雅，可以改为根据函数计算字体大小
                double fontSize = 13;
                if (text != null) {
                  int len = text.length;
                  if (len >=1 && len<= 3) {
                    fontSize = 20;
                  } else if (len > 3 && len <=4) {
                    fontSize = 18;
                  } else if(len > 4 && len <=5) {
                    fontSize = 16;
                  } else if(len > 5 && len <=6) {
                    fontSize = 12;
                  } else if(len > 6 && len <=9) {
                    fontSize = 10;
                  } else if(len > 9) {
                    fontSize = 7;
                  }
                }
                return Center(
                  child: Text(
                    '$text',
                    overflow: TextOverflow.ellipsis,// 字数过多时显示省略号
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: fontSize
                    ),
                  ),
                );
              },
              childCount: widget.itemList.length)),
      flex: 1,
    );
  }
}

class _WrapLayout extends SingleChildLayoutDelegate {
  _WrapLayout({
    this.progress,
    this.height,
  });

  final double progress;
  final double height;

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    double maxHeight = height;

    return new BoxConstraints(
      minWidth: constraints.maxWidth,
      maxWidth: constraints.maxWidth,
      minHeight: 0.0,
      maxHeight: maxHeight,
    );
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    double height = size.height - childSize.height * progress;
    return new Offset(0.0, height);
  }

  @override
  bool shouldRelayout(_WrapLayout oldDelegate) {
    return progress != oldDelegate.progress;
  }
}
