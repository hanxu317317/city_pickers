//
// Created with Android Studio.
// User: 三帆
// Date: 18/02/2019
// Time: 17:57
// email: sanfan.hx@alibaba-inc.com
// target:  城市级别选择器. 支持搜索. 与字母排序
//

import 'dart:async';

import 'dart:math' as math;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../meta/province.dart';
import '../../modal/point.dart';
import '../../modal/result.dart';
import '../util.dart';
import 'alpha.dart';
import 'utils.dart';

export 'cities_style.dart';

const defaultTagBgColor = Color.fromRGBO(0, 0, 0, 0);
const defaultTagActiveBgColor = Color(0xffeeeeee);
const defaultTagActiveFontColor = Color(0xff242424);
const defaultTagFontColor = Color(0xff666666);
const defaultTopIndexFontColor = Color(0xffc0c0c0);
const defaultTopIndexBgColor = Color(0xfff3f4f5);
const defaultScaffoldBackgroundColor = Colors.white;

class CitiesSelector extends StatefulWidget {
  final String? locationCode;
  final Map<String, String>? provincesData;
  final Map<String, dynamic>? citiesData;
  final List<HotCity>? hotCities;

  /// 定义右侧bar的激活与普通状态的颜色
  final Color tagBarBgColor;
  final Color tagBarActiveColor;

  /// 定义右侧bar的字体的激活与普通状态的颜色
  final Color tagBarFontColor;
  final Color tagBarFontActiveColor;

  /// 右侧Bar字体的大小
  final double tagBarFontSize;

  /// 右侧Bar文字的Padding
  final EdgeInsetsGeometry tagBarTextPadding;

  /// 是否显示顶部的tag提示标签
  final bool showTopIndex;

  /// 每一个类别的城市顶部的标题的高度
  final double topIndexHeight;

  /// 每一个类别的城市顶部的标题的字体大小
  final double topIndexFontSize;

  /// 每一个类别的城市顶部的标题的样式
  final Color topIndexFontColor;
  final Color topIndexBgColor;

  /// 城市列表每一个Item的字体大小
  final double itemFontSize;

  final Color? itemSelectFontColor;

  final Color? itemFontColor;

  final ValueSetter<Result> onSelected;

  CitiesSelector({
    this.locationCode,
    this.citiesData,
    this.hotCities,
    this.provincesData,
    this.tagBarActiveColor = Colors.yellow,
    this.tagBarFontActiveColor = Colors.red,
    this.tagBarBgColor = Colors.cyanAccent,
    this.tagBarFontColor = Colors.white,
    this.tagBarFontSize = 14.0,
    this.tagBarTextPadding = const EdgeInsets.symmetric(horizontal: 4.0),
    this.showTopIndex = true,
    this.topIndexFontSize = 16,
    this.topIndexHeight = 40,
    this.topIndexFontColor = Colors.green,
    this.topIndexBgColor = Colors.blueGrey,
    this.itemFontSize = 12.0,
    this.itemFontColor = Colors.black,
    this.itemSelectFontColor = Colors.red,
    required this.onSelected,
  });

  @override
  _CitiesSelectorState createState() => _CitiesSelectorState();
}

class _CitiesSelectorState extends State<CitiesSelector> {
  String? _touchedTagName;
  Timer? _changeTimer;

  int _initialScrollIndex = -1;
  bool _isTouchTagBar = false;

  /// 城市列表数组
  List<Point> _cities = [];
  late ItemScrollController _scrollController;
  late ItemPositionsListener _positionsListener;

  late Map<String, int> _tagToIndexMap;

  /// 有效的tag标签列表, 对应右侧标签
  late List<String> _tagList;

  @override
  void initState() {
    super.initState();
    _cities = CitiesUtils.getAllCitiesByMeta(
        widget.provincesData ?? provincesData, widget.citiesData ?? citiesData);
    if (widget.hotCities != null) {
      _cities.insertAll(
        0,
        widget.hotCities!.map((e) => Point(
              code: e.id,
              letter: e.tag,
              name: e.name,
              child: [],
            )),
      );
    }

    _tagToIndexMap = _generateTagToIndexMap(_cities);
    _initialScrollIndex = getInitialCityCodeIndex();
    _tagList = CitiesUtils.getValidTagsByCityList(_cities);

    _scrollController = new ItemScrollController();
    _positionsListener = ItemPositionsListener.create();
  }

  @override
  void dispose() {
    _changeTimer?.cancel();
    super.dispose();
  }

  int getInitialCityCodeIndex() {
    final code = widget.locationCode;
    if (code == null) {
      return -1;
    }
    return _cities.indexWhere((Point point) {
      return point.code == code;
    });
  }

  Map<String, int> _generateTagToIndexMap(List<Point> cities) {
    final map = <String, int>{};
    String? prevLetter;
    for (var i = 0; i < cities.length; i++) {
      var letter = cities[i].letter;
      if (letter != prevLetter) {
        map[letter ?? ''] = i;
        prevLetter = letter;
      }
    }
    return map;
  }

  /// 当右侧的类型. 因为触摸而发生改变
  _onTagChange(String alpha) {
    if (_changeTimer?.isActive ?? false) {
      _changeTimer!.cancel();
    }
    HapticFeedback.selectionClick();
    _changeTimer = new Timer(Duration(milliseconds: 30), () {
      final index = _tagToIndexMap[alpha];
      if (index != null) {
        _scrollController.jumpTo(index: index);
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
            _touchedTagName ?? _tagList.first,
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
      alphaFontSize: widget.tagBarFontSize,
      alphaPadding: widget.tagBarTextPadding,
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
      onAlphaChange: (String? alpha) {
        this.setState(() {
          if (!_isTouchTagBar) {
            _isTouchTagBar = true;
          }
          _touchedTagName = alpha;
        });
        if (alpha != null) {
          _onTagChange(alpha);
        }
      },
    );
  }

  Result _createResult(Point city) {
    Result result = Result();
    result.cityId = city.code;
    result.cityName = city.name;
    return result;
  }

  List<Widget> _buildChildren(BuildContext context, double height) {
    List<Widget> children = [];
    ThemeData theme = Theme.of(context);

    bool hideTag(int index) =>
        index != 0 && _cities[index - 1].letter == _cities[index].letter;

    children.add(ScrollablePositionedList.builder(
      initialScrollIndex: math.max(0, _initialScrollIndex),
      initialAlignment: _initialScrollIndex > 0 &&
              widget.showTopIndex &&
              !_tagToIndexMap.containsValue(_initialScrollIndex)
          // 不显示tag的item, 顶部会被常显的topTag挡住, 需要往下偏移
          ? widget.topIndexHeight / height
          : 0,
      itemScrollController: _scrollController,
      itemPositionsListener: _positionsListener,
      itemCount: _cities.length,
      itemBuilder: (context, index) {
        // 这里使用code判断是否选择, 因为[widget.hotCities]和[widget.citiesData]有可能有相同code的城市
        // 此时他们应该都是选中状态
        bool selected = widget.locationCode != null &&
            widget.locationCode == _cities[index].code;
        return Column(
          children: <Widget>[
            Offstage(
              offstage: hideTag(index),
              child: Container(
                height: widget.topIndexHeight,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 15.0),
                color: widget.topIndexBgColor,
                child: Text(
                  _cities[index].letter ?? "",
                  softWrap: true,
                  style: TextStyle(
                      fontSize: widget.topIndexFontSize,
                      color: widget.topIndexFontColor),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Center(
                child: ListTileTheme(
                  selectedColor:
                      widget.itemSelectFontColor ?? theme.primaryColor,
                  textColor: widget.itemFontColor ?? theme.accentColor,
                  child: ListTile(
                    selected: selected,
                    title: Text(_cities[index].name,
                        style: TextStyle(fontSize: widget.itemFontSize)),
                    onTap: () {
                      widget.onSelected(_createResult(_cities[index]));
                    },
                  ),
                ),
              ),
            )
          ],
        );
      },
    ));
    if (widget.showTopIndex) {
      children.add(ValueListenableBuilder<Iterable<ItemPosition>>(
        valueListenable: _positionsListener.itemPositions,
        builder: (context, value, child) {
          // value不是有序的, 需要排序
          final positions = value.sortedBy<num>((it) => it.index);

          final firstPosition = positions.firstOrNull;
          final tagName = firstPosition == null
              ? null
              : _cities[firstPosition.index].letter;

          final tagPosition = positions.firstWhereOrNull((it) =>
              it.itemLeadingEdge > 0 && _tagToIndexMap.containsValue(it.index));
          final top = tagPosition != null
              ? math.min(0.0,
                  tagPosition.itemLeadingEdge * height - widget.topIndexHeight)
              : 0.0;

          return Positioned(
            top: top,
            left: 0,
            right: 0,
            child: Container(
              height: widget.topIndexHeight,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 15.0),
              color: widget.topIndexBgColor,
              child: Text(
                tagName ?? _tagList.first,
                softWrap: true,
                style: TextStyle(
                  fontSize: widget.topIndexFontSize,
                  color: widget.topIndexFontColor,
                ),
              ),
            ),
          );
        },
      ));
    }
    children.add(Offstage(
      offstage: !_isTouchTagBar,
      child: _buildCenterModal(),
    ));

    /// 加入字母
    children.add(Positioned(
      right: 0,
      top: 0,
      bottom: 0,
      child: _buildAlphaAndTags(),
    ));
    return children;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, c) => Stack(
        children: _buildChildren(context, c.maxHeight),
      ),
    );
  }
}

class CitiesSelectorPage extends StatelessWidget {
  const CitiesSelectorPage({
    Key? key,
    required this.citiesSelector,
    this.title = '城市选择器',
    this.scaffoldBackgroundColor,
    this.appBarBuilder,
  }) : super(key: key);
  final Widget citiesSelector;
  final Color? scaffoldBackgroundColor;
  final String title;
  final AppBarBuilder? appBarBuilder;

  AppBar _buildAppBar() {
    if (appBarBuilder != null) {
      return appBarBuilder!(title);
    }
    return AppBar(title: Text(title));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      appBar: _buildAppBar(),
      body: SafeArea(
        bottom: true,
        child: citiesSelector,
      ),
    );
  }
}
