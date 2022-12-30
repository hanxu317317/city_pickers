import 'dart:async';

import 'package:city_pickers/modal/base_citys.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../modal/point.dart';
import '../../modal/result.dart';
import '../mod/inherit_process.dart';
import '../show_types.dart';
import '../util.dart';
import './pickers.dart';

class BaseView extends StatefulWidget {
  final double? progress;
  final String locationCode;
  final ShowType showType;
  final Map<String, String> provincesData;
  final Map<String, dynamic> citiesData;
  final ItemWidgetBuilder? itemBuilder;

  /// 是否对数据进行排序
  final bool isSort;

  /// ios选择框的高度. 配合 itemBuilder中的字体使用.
  final double? itemExtent;

  /// 容器高度
  final double height;

  /// 取消按钮的Widget
  /// 当用户设置该属性. 会优先使用用户设置的widget, 否则使用代码中默认的文本, 使用primary主题色
  final Widget? cancelWidget;

  /// 确认按钮的widget
  /// 当用户设置该属性. 会优先使用用户设置的widget, 否则使用代码中默认的文本, 使用primary主题色
  final Widget? confirmWidget;

  final double borderRadius;

  /// 是否开启全球化数据
  final bool? global;

  BaseView({
    this.progress,
    required this.showType,
    required this.height,
    required this.locationCode,
    required this.citiesData,
    required this.provincesData,
    this.itemBuilder,
    this.itemExtent,
    this.cancelWidget,
    this.confirmWidget,
    this.isSort = false,
    this.borderRadius = 0,
    this.global = false,
  }) : assert(!(itemBuilder != null && itemExtent == null),
            "\ritemExtent could't be null if itemBuilder exits");

  _BaseView createState() => _BaseView();
}

class _BaseView extends State<BaseView> {
  Timer? _changeTimer;
  bool _resetControllerOnce = false;

  FixedExtentScrollController provinceController =
      new FixedExtentScrollController();
  FixedExtentScrollController cityController =
      new FixedExtentScrollController();
  FixedExtentScrollController areaController =
      new FixedExtentScrollController();
  FixedExtentScrollController villageController =
      new FixedExtentScrollController(); // 增加第4级(村/镇)选择

  // 所有省的列表. 因为性能等综合原因,
  // 没有一次性构建整个以国为根的树. 动态的构建以省为根的树, 效率高.
  late List<Point> provinces;
  late CityTree cityTree;

  late Point targetProvince;
  Point? targetCity;
  Point? targetArea;
  Point? targetVillage; // 增加第4级(村/镇)选择

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
      _initController();
    } catch (e) {
      print('Exception details:\n 初始化地理位置信息失败, 请检查省分城市数据 \n $e');
    }
  }

  void dispose() {
    provinceController.dispose();
    cityController.dispose();
    areaController.dispose();
    villageController.dispose();

    // 增加第4级(村/镇)选择
    if (_changeTimer?.isActive ?? false) {
      _changeTimer!.cancel();
    }
    super.dispose();
  }

  // 初始化controller, 为了使给定的默认值, 在选框的中心位置
  void _initController() {
    ShowType showType = widget.showType;
    if (showType.contain(ShowType.p)) {
      provinceController = new FixedExtentScrollController(
          initialItem:
              provinces.indexWhere((Point p) => p.code == targetProvince.code));
    }
    if (showType.contain(ShowType.c)) {
      cityController = new FixedExtentScrollController(
          initialItem: targetProvince.children
              .indexWhere((Point p) => p.code == targetCity!.code));
    }
    if (showType.contain(ShowType.a)) {
      areaController = new FixedExtentScrollController(
          initialItem: targetCity!.children
              .indexWhere((Point p) => p.code == targetArea!.code));
    }
    // 增加第4级(村/镇)选择
    if (showType.contain(ShowType.v)) {
      villageController = new FixedExtentScrollController(
          initialItem: targetArea!.children
              .indexWhere((Point p) => p.code == targetVillage!.code));
    }
  }

  // 重置Controller的原因在于, 无法手动去更改initialItem, 也无法通过
  // jumpTo or animateTo去更改, 强行更改, 会触发 _onProvinceChange  _onCityChange 与 _onAreacChange
  // 只为覆盖初始化化的参数initialItem
  void _resetController() {
    if (_resetControllerOnce) return;
    provinceController = new FixedExtentScrollController(initialItem: 0);

    cityController = new FixedExtentScrollController(initialItem: 0);
    areaController = new FixedExtentScrollController(initialItem: 0);
    villageController =
        new FixedExtentScrollController(initialItem: 0); // 增加第4级(村/镇)选择
    _resetControllerOnce = true;
  }

  // initialize tree by locationCode
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

      /// 为用户给出的locationCode不正确做一个容错
      if (targetProvince.isNull) {
        targetProvince = cityTree.initTreeByCode(provinces.first.code!);
      }
      targetProvince.children.forEach((Point _city) {
        if (_city.code == _locationCode) {
          targetCity = _city;
          targetArea = _getTargetChildFirst(_city);
          // 增加第4级(村/镇)选择
          targetVillage = _getTargetChildFirst(targetArea!);
        }
        _city.children.forEach((Point _area) {
          if (_area.code == _locationCode) {
            targetCity = _city;
            targetArea = _area;
            // 增加第4级(村/镇)选择
            targetVillage = _getTargetChildFirst(_area);
          }
          _area.children.forEach((Point _village) {
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
      targetProvince = cityTree.initTreeByCode(widget.provincesData.keys.first);
    }
    // 尝试试图匹配到下一个级别的第一个,
    if (targetCity == null) {
      targetCity = _getTargetChildFirst(targetProvince);
    }
    // 尝试试图匹配到下一个级别的第一个,
    if (targetArea == null) {
      targetArea = _getTargetChildFirst(targetCity!);
    }
    // 增加第4级(村/镇)选择
    // 尝试试图匹配到下一个级别的第一个,
    if (targetVillage == null) {
      targetVillage = _getTargetChildFirst(targetArea!);
    }
  }

  Point? _getTargetChildFirst(Point target) {
    if (target == Point.nullPoint()) {
      return Point.nullPoint();
    }
    if (target.children.isNotEmpty && target.children.isNotEmpty) {
      return target.children.first;
    }
    return Point.nullPoint();
  }

  // 通过选中的省份, 构建以省份为根节点的树型结构
  List<String> getCityItemList() {
    List<String> result = [];
    result.addAll(targetProvince.children.toList().map((p) => p.name).toList());
    return result;
  }

  List<String> getAreaItemList() {
    List<String> result = [];

    if (targetCity != null) {
      result.addAll(targetCity!.children.toList().map((p) => p.name).toList());
    }
    return result;
  }

  // 增加第4级(村/镇)选择
  List<String> getVillageItemList() {
    List<String> result = [];

    if (targetArea != null) {
      result.addAll(targetArea!.children.toList().map((p) => p.name).toList());
    }
    return result;
  }

  // province change handle
  // 加入延时处理, 减少构建树的消耗
  _onProvinceChange(Point _province) {
    if (_changeTimer != null && _changeTimer!.isActive) {
      _changeTimer!.cancel();
    }
    _changeTimer = new Timer(Duration(milliseconds: 100), () {
      Point _provinceTree = cityTree.initTree(_province.code.toString());
      setState(() {
        targetProvince = _provinceTree;
        targetCity = _getTargetChildFirst(_provinceTree);
        if (!targetCity!.isNull) {
          targetArea = _getTargetChildFirst(targetCity!);
          targetVillage = _getTargetChildFirst(targetArea!); // 增加第4级(村/镇)选择
        } else {
          targetArea = Point.nullPoint();
          targetVillage = Point.nullPoint();
        }
        _resetController();
      });
    });
  }

  _onCityChange(Point _targetCity) {
    print('_onCityChange');
    if (_changeTimer != null && _changeTimer!.isActive) {
      _changeTimer!.cancel();
    }
    _changeTimer = new Timer(Duration(milliseconds: 100), () {
      if (!mounted) return;
      setState(() {
        targetCity = _targetCity;
        targetArea = _getTargetChildFirst(targetCity!);
        if (!targetArea!.isNull) {
          targetVillage = _getTargetChildFirst(targetArea!); // 增加第4级(村/镇)选择
        } else {
          targetVillage = Point.nullPoint();
        }
      });
    });
    _resetController();
  }

  _onAreaChange(Point _targetArea) {
    if (_changeTimer != null && _changeTimer!.isActive) {
      _changeTimer!.cancel();
    }
    _changeTimer = new Timer(Duration(milliseconds: 100), () {
      if (!mounted) return;
      setState(() {
        targetArea = _targetArea;
        targetVillage = _getTargetChildFirst(targetArea!);
      });
    });
  }

  // 增加第4级(村/镇)选择
  _onVillageChange(Point _targetVillage) {
    if (_changeTimer != null && _changeTimer!.isActive) {
      _changeTimer!.cancel();
    }
    _changeTimer = new Timer(Duration(milliseconds: 100), () {
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

    // 增加第4级(村/镇)选择
    if (showType.contain(ShowType.v)) {
      result.provinceId = targetProvince.code.toString();
      result.provinceName = targetProvince.name;
      result.cityId = targetCity!.code.toString();
      result.cityName = targetCity?.name;
      result.areaId = targetArea?.code.toString();
      result.areaName = targetArea?.name;
      result.villageId = targetVillage?.code.toString();
      result.villageName = targetVillage?.name;
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
    List<Widget> pickerRows = [];
    if (widget.showType.contain(ShowType.p)) {
      pickerRows.add(new ScrollPicker(
        key: Key('province'),
        isShow: widget.showType.contain(ShowType.p),
        controller: provinceController,
        itemBuilder: widget.itemBuilder,
        itemExtent: widget.itemExtent,
        value: targetProvince.name,
        itemList: provinces.toList().map((v) => v.name).toList(),
        changed: (index) {
          _onProvinceChange(provinces[index]);
        },
      ));
    }
    if (widget.showType.contain(ShowType.c)) {
      pickerRows.add(new ScrollPicker(
        key: Key('citys'),
        // 这个属性是为了强制刷新
        isShow: widget.showType.contain(ShowType.c),
        controller: cityController,
        itemBuilder: widget.itemBuilder,
        itemExtent: widget.itemExtent,
        value: targetCity?.name,
        itemList: getCityItemList(),
        changed: (index) {
          _onCityChange(targetProvince.children[index]);
        },
      ));
    }
    if (widget.showType.contain(ShowType.a)) {
      pickerRows.add(new ScrollPicker(
        key: Key('towns'),
        isShow: widget.showType.contain(ShowType.a),
        controller: areaController,
        itemBuilder: widget.itemBuilder,
        itemExtent: widget.itemExtent,
        value: targetArea?.name,
        itemList: getAreaItemList(),
        changed: (index) {
          _onAreaChange(targetCity!.children[index]);
        },
      ));
    }
    if (widget.showType.contain(ShowType.v)) {
      pickerRows.add(new ScrollPicker(
        // 增加第4级(村/镇)选择
        // key: Key('villages'),
        isShow: widget.showType.contain(ShowType.v),
        controller: villageController,
        itemBuilder: widget.itemBuilder,
        itemExtent: widget.itemExtent,
        value: targetVillage?.name,
        itemList: getVillageItemList(),
        changed: (index) {
          _onVillageChange(targetArea!.children[index]);
        },
      ));
    }
    return new Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(widget.borderRadius),
              topRight: Radius.circular(widget.borderRadius)),
        ),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Row(
              children: <Widget>[
                TextButton(
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
                TextButton(
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
                children: pickerRows,
              ),
            )
          ],
        ));
  }

  Widget build(BuildContext context) {
    final route = InheritRouteWidget.of(context)!.router;
    return new AnimatedBuilder(
      animation: route.animation!,
      builder: (BuildContext context, Widget? child) {
        return new CustomSingleChildLayout(
          delegate: _WrapLayout(
              progress: route.animation!.value, height: widget.height),
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

class _WrapLayout extends SingleChildLayoutDelegate {
  _WrapLayout({
    required this.progress,
    required this.height,
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
