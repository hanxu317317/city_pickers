//
// Created with Android Studio.
// User: 三帆
// Date: 18/02/2019
// Time: 17:57
// email: sanfan.hx@alibaba-inc.com
// target:  城市级别选择器. 支持搜索. 与字母排序
//

import 'dart:async';

import 'package:flutter/material.dart';

import '../../meta/province.dart';
import '../../modal/point.dart';
import '../../modal/result.dart';
import 'alpha.dart';
import 'utils.dart';

export 'cities_style.dart';

const defaultTagBgColor = Color.fromRGBO(0, 0, 0, 0);
const defaultTagActiveBgColor = Color(0xffeeeeee);
const defaultTagActiveFontColor = Color(0xff242424);
const defaultTagFontColor = Color(0xff666666);
const defaultTopIndexFontColor = Color(0xffc0c0c0);
const defaultTopIndexBgColor = Color(0xfff3f4f5);

class CitiesSelector extends StatefulWidget {
  final String locationCode;
  final String title;
  final Map<String, dynamic> provincesData;
  final Map<String, dynamic> citiesData;
  final List<HotCity> hotCities;

  /// 定义右侧bar的激活与普通状态的颜色
  final Color tagBarBgColor;
  final Color tagBarActiveColor;

  /// 定义右侧bar的字体的激活与普通状态的颜色
  final Color tagBarFontColor;
  final Color tagBarFontActiveColor;

  /// 右侧Bar字体的大小
  final double tagBarFontSize;

  /// 城市列表每一个Item的高度
//  final double cityItemHeight;
  /// 城市列表每一个Item的字体大小
  final double cityItemFontSize;

  /// 每一个类别的城市顶部的标题的高度
  final double topIndexHeight;

  /// 每一个类别的城市顶部的标题的字体大小
  final double topIndexFontSize;

  /// 每一个类别的城市顶部的标题的样式
  final Color topIndexFontColor;
  final Color topIndexBgColor;

  final Color itemSelectFontColor;

//  暂时无用
//  final Color itemSelectBgColor;

  final Color itemFontColor;

  CitiesSelector({
    this.title = '城市选择器',
    this.locationCode,
    this.citiesData,
    this.hotCities,
    this.provincesData,
    this.tagBarActiveColor = Colors.yellow,
    this.tagBarFontActiveColor = Colors.red,
    this.tagBarBgColor = Colors.cyanAccent,
    this.tagBarFontColor = Colors.white,
    this.tagBarFontSize = 14.0,
    this.cityItemFontSize = 12.0,
//    this.cityItemHeight = 100,
    this.topIndexFontSize = 16,
    this.topIndexHeight = 40,
    this.topIndexFontColor = Colors.green,
    this.topIndexBgColor = Colors.blueGrey,
//    this.itemSelectBgColor = Colors.white,
    this.itemFontColor = Colors.black,
    this.itemSelectFontColor = Colors.red,
  });

  @override
  _CitiesSelectorState createState() => _CitiesSelectorState();
}

class _CitiesSelectorState extends State<CitiesSelector> {
  String _tagName;
  Timer _changeTimer;

  /// 进行计算 .获取的初始化的城市code码
  Point _initTargetCity;
  bool _isTouchTagBar = false;

  /// 是否显示顶部的tag提示标签
  bool _showTopOffstage = true;

  /// 顶部tag标签的动态高度
  double _topOffstageTop = 0;

  /// 城市列表数组
  List<Point> _cities = new List();
  ScrollController _scrollController;

  /// 用这个key 去标记一个item,用来在初始化后. 获取期高度
  GlobalKey _key0 = new GlobalKey();

  /// 计算每一个letter or tag的列表区间范围
  /// 存放每个tag集的偏移start 与 end . 通过计算Alpha的位置, 判定滚动
  List<CityOffsetRange> _offsetTagRangeList = [];

  /// 有效的tag标签列表, 对应右侧标签
  List<String> _tagList;

  /// 每一个顶部标签的高度
  double topTagHeight;

  /// 用户可定义的, 每一个选项的高度
//  double itemHeight;

  /// 用户可定义的, 选项中字体的大小
  double itemFontSize;

  @override
  void initState() {
    // TODO: implement initState
    print("hotCities::::: ${widget.hotCities}");
    _cities = CitiesUtils.getAllCitiesByMeta(
        widget.provincesData ?? provincesData, widget.citiesData ?? citiesData);
    print("_cities::: $_cities");
    _initTargetCity = getInitialCityCode();
//    print("_cities>>> ${_cities.length}");
//    print("locationCode ${widget.locationCode}");
    _tagList = CitiesUtils.getValidTagsByCityList(_cities);

    _scrollController = new ScrollController();

    // 向tag 与 city 列表中加入 自定义数据
    formatHotCities();
    _scrollController.addListener(() {
      _initOffsetRangList();
//      可以用来强行关闭键盘
//      FocusScope.of(context).requestFocus(FocusNode());
      _dynamicChangeTopStagePosition(_scrollController.offset.toDouble());
    });
    super.initState();

    topTagHeight = widget.topIndexHeight;
//    itemHeight = widget.cityItemHeight;
    itemFontSize = widget.cityItemFontSize;
  }

  void formatHotCities() {
    if (widget.hotCities != null) {
      List<Point> hotPoints = [];
      List<String> hotTags = [];
      widget.hotCities.forEach((HotCity hotCity) {
        if (!hotTags.contains(hotCity.tag)) {
          hotTags.add(hotCity.tag);
        }
        hotPoints.add(Point(
            code: hotCity.id,
            letter: hotCity.tag,
            name: hotCity.name,
            child: []));
      });
      _cities.insertAll(0, hotPoints);
      _tagList.insertAll(0, hotTags);
    }
  }

  Point getInitialCityCode() {
    if (widget.locationCode == null) {
      return null;
    }
    int code = int.parse(widget.locationCode);
    return _cities.firstWhere((Point point) {
      return point.code == code;
    }, orElse: () => null);
  }

  /// 只有当组件加载后. 才能获取_key0的高度,要保证该函数只会被执行一次
  List<CityOffsetRange> _initOffsetRangList() {
    if (_offsetTagRangeList.isEmpty) {
      double itemContainerHeight =
          _key0.currentContext.findRenderObject().paintBounds.size.height;

      double offstageHeight = topTagHeight;

      _offsetTagRangeList = CitiesUtils.getOffsetRangeByCitiesList(
          lists: _cities,
          tagHeight: offstageHeight,
          itemHeight: itemContainerHeight);
    }
    return _offsetTagRangeList;
  }

  /// 动态计算顶部topStage标题的位置
  _dynamicChangeTopStagePosition(double scrollTopOffset) {
    // 应该显示标签的视觉窗口中的对象
    CityOffsetRange tempViewTarget =
        _offsetTagRangeList.firstWhere((CityOffsetRange range) {
      return scrollTopOffset > range.start && scrollTopOffset < range.end;
    }, orElse: () => null);
    if (tempViewTarget == null) {
      return;
    }

    // 跟随滚动, 因为滚动精度问题. 实际上很难到让_topOffstageTop=0;
    if (scrollTopOffset + topTagHeight >= tempViewTarget.end) {
      return this.setState(() {
        _tagName = tempViewTarget.tag;
        _topOffstageTop =
            -(scrollTopOffset + topTagHeight - tempViewTarget.end);
      });
    }

    // 修正topStage的位置, 分二种情况将期归0
    // 第一种情况, 是当上方动态跟随. 精度达到预期时._topOffstageTop 被置0
    // 第二种. 当则是补偿以上的运行
    if (_topOffstageTop < -topTagHeight && _topOffstageTop != 0) {
      this.setState(() {
        _topOffstageTop = 0;
      });
    } else if (_topOffstageTop != 0) {
//      print("补偿运算");
      _offsetTagRangeList.forEach((CityOffsetRange item) {
        if (scrollTopOffset > item.start && scrollTopOffset < item.end) {
          this.setState(() {
            _topOffstageTop = 0;
            _tagName = item.tag;
          });
          return;
        }
      });
    }
  }

  /// 当右侧的类型. 因为触摸而发生改变
  _onTagChange(String alpha) {
    if (_changeTimer != null && _changeTimer.isActive) {
      _changeTimer.cancel();
    }
    _changeTimer = new Timer(Duration(milliseconds: 30), () {
      CityOffsetRange cityOffsetRange = _offsetTagRangeList.firstWhere(
          (CityOffsetRange range) => range.tag == alpha,
          orElse: null);
      if (cityOffsetRange != null) {
        _scrollController.jumpTo(cityOffsetRange.start);
      }
    });
  }

  /// 生成中间的字母提示Modal
  Widget _buildCenterModal() {
    return Center(
      child: Card(
        color: Colors.black54,
        child: Container(
          alignment: Alignment.center,
          width: 80.0,
          height: 80.0,
          child: Text(
            _tagName ?? '',
            style: TextStyle(
              fontSize: 32.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAlphaAndTags() {
    return Alpha(
      alphas: _tagList,
      activeBgColor: widget.tagBarActiveColor,
      bgColor: widget.tagBarBgColor,
      fontColor: widget.tagBarFontColor,
      fontActiveColor: widget.tagBarFontActiveColor,
      alphaItemSize: widget.tagBarFontSize,
      onTouchStart: () {
        this.setState(() {
          _isTouchTagBar = true;
        });
      },
      onTouchEnd: () {
        this.setState(() {
          _isTouchTagBar = false;
        });
      },
      onAlphaChange: (String alpha) {
        this.setState(() {
          if (!_isTouchTagBar) {
            _isTouchTagBar = true;
          }
          _tagName = alpha;
        });
        _initOffsetRangList();
        _onTagChange(alpha);
      },
    );
  }

  Result _buildResult(Point city) {
    Result result = Result();
    result.cityId = city.code.toString();
    result.cityName = city.name;
//    print('result $result');
    return result;
  }

  List<Widget> _buildChildren(BuildContext context) {
//    print("_initTargetCity.code ${_initTargetCity}");
    List<Widget> children = [];
    ThemeData theme = Theme.of(context);
    children.add(ListView.builder(
        controller: _scrollController,
        itemCount: _cities.length,
        itemBuilder: (context, index) {
          bool offstage = false;
          bool selected = _initTargetCity != null &&
              _initTargetCity.code == _cities[index].code;
          if (index != 0 &&
              _cities[index - 1].letter == _cities[index].letter) {
            offstage = true;
          }
          return Column(
            children: <Widget>[
              Offstage(
                offstage: offstage,
                child: Container(
                  height: topTagHeight,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 15.0),
                  color: widget.topIndexBgColor,
                  child: Text(
                    _cities[index].letter,
                    softWrap: true,
                    style: TextStyle(
                        fontSize: widget.topIndexFontSize,
                        color: widget.topIndexFontColor),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                key: index == 0 ? _key0 : null,
                child: Center(
                  child: ListTileTheme(
                    selectedColor:
                        widget.itemSelectFontColor ?? theme.primaryColor,
                    textColor: widget.itemFontColor ?? theme.accentColor,
                    child: ListTile(
                      selected: selected,
                      title: Text(_cities[index].name,
                          style: TextStyle(fontSize: itemFontSize)),
                      onTap: () {
                        Navigator.pop(context, _buildResult(_cities[index]));
                      },
                    ),
                  ),
                ),
              )
            ],
          );
        }));
    if (_showTopOffstage) {
      children.add(Positioned(
        top: _topOffstageTop,
        left: 0,
        right: 0,
        child: Offstage(
          offstage: false,
          child: Container(
            height: topTagHeight,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 15.0),
            color: widget.topIndexBgColor,
            child: Text(
              _tagName ?? _tagList.first,
              softWrap: true,
              style: TextStyle(
                fontSize: widget.topIndexFontSize,
                color: widget.topIndexFontColor,
              ),
            ),
          ),
        ),
      ));
    }
    if (_isTouchTagBar) {
      children.add(_buildCenterModal());
    }

    /// 加入字母
    children.add(
        Positioned(right: 0, top: 0, bottom: 0, child: _buildAlphaAndTags()));
    return children;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
            title: Text(
          widget.title,
        )),
        body: SafeArea(
          bottom: true,
          child: Column(
            children: <Widget>[
              Expanded(
                  flex: 1, child: Stack(children: _buildChildren(context))),
            ],
          ),
        ));
  }
}
