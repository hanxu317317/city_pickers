//
// Created with Android Studio.
// User: 三帆
// Date: 18/02/2019
// Time: 17:57
// email: sanfan.hx@alibaba-inc.com
// target:  城市级别选择器. 支持搜索. 与字母排序
//

import 'package:flutter/material.dart';
import 'dart:async';
import '../../meta/province.dart';
import '../../modal/point.dart';


import 'alpha.dart';
import 'utils.dart';

const _scrollTopOffset = 1;

class CitiesSelector extends StatefulWidget {
//  String title;
//
  @override
  _CitiesSelectorState createState() => _CitiesSelectorState();
}

class _CitiesSelectorState extends State<CitiesSelector> {
  String _tagName;
  Timer _changeTimer;
  bool _isTouchTagBar = false;

  /// 是否显示顶部的tag提示标签
  bool _showTopOffstage = true;
  bool _animteTopOffstage = false;
  /// 顶部tag标签的动态高度
  double _topOffstateTop = 0;
  List<Point> _cities = new List();
  ScrollController _scrollController;
  // 用二个key  去标记 Offstage 与 item, 只需要初始化一次
  GlobalKey _key0 =  new GlobalKey();
  GlobalKey _key1 =  new GlobalKey();
  /// 计算每一个letter or tag的列表区间范围
  /// 存放每个tag集的偏移start 与 end . 通过计算Alpha的位置, 判定滚动
  List<CityOffsetRange> _offsetTagRangeList = [];
  /// 有效的tag标签列表, 对应右侧标签
  List<String> _tagList;
  /// 每一个顶部标签的高度
  double topTagHeight = 40;
  /// 用户可定义的, 每一个选项的高度
  double itemHeight = 60.0;
  /// 用户可定义的, 选项中字体的大小
  double itemFontSize = 16.0;

  @override
  void initState() {
    // TODO: implement initState
    _cities = CitiesUtils.getAllCitiesByMeta(provincesData, citiesData);
    _tagList = CitiesUtils.getValidTagsByCityList(_cities);
    _scrollController = new ScrollController();
    _scrollController.addListener(() {
      _initOffsetRangList();
      _dynamicChangeTopStagePosition(_scrollController.offset.toDouble());
    });
    super.initState();
  }
  _initOffsetRangList() {
    // 只有当组件加载后. 才能获取高度,该函数只会被执行一次
    if (_offsetTagRangeList.isEmpty) {
        double itemContainerHeight = _key0.currentContext.findRenderObject().paintBounds.size.height;
        double offstageHeight = topTagHeight;
        _offsetTagRangeList = CitiesUtils.getOffsetRangeByCitiesList(lists: _cities, tagHeight: offstageHeight, itemHeight: itemContainerHeight);
    }
    return _offsetTagRangeList;
  }
  _dynamicChangeTopStagePosition(double scrollTopOffset) {
    // 应该显示标签的视觉窗口中的对象
    CityOffsetRange tempViewTarget = _offsetTagRangeList.firstWhere((CityOffsetRange range) {
      return scrollTopOffset > range.start && scrollTopOffset < range.end;
    });
    if (scrollTopOffset + topTagHeight >= tempViewTarget.end - _scrollTopOffset) {
      this.setState(() {
        _animteTopOffstage = true;
        _topOffstateTop = 0 - (scrollTopOffset + topTagHeight - tempViewTarget.end + _scrollTopOffset);
      });
    }

    if (_topOffstateTop < 0 - topTagHeight && _topOffstateTop != 0) {
      print("_topOffstateTop: $_topOffstateTop} and topTagHeight $topTagHeight");

      this.setState(() {
        _topOffstateTop = 0;
        _animteTopOffstage = false;
      });
    }
  }
  _onTagChange(String alpha) {
    if (_changeTimer != null && _changeTimer.isActive) {
      _changeTimer.cancel();
    }
    _changeTimer = new Timer(Duration(milliseconds: 30), () {
      CityOffsetRange cityOffsetRange = _offsetTagRangeList.firstWhere((CityOffsetRange range) => range.tag == alpha);
      if (cityOffsetRange != null) {
        _scrollController.jumpTo(cityOffsetRange.start);
      }
    });
  }
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
    return Align(
        alignment: Alignment.centerRight,
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(3.0),
          margin: EdgeInsets.all(5.0),
          color: _isTouchTagBar ? Colors.cyan : Colors.indigo,
          width: 30,
          child: Alpha(
            alphas: _tagList,
            alphaItemSize:14,
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
                _tagName = alpha;
              });
              _initOffsetRangList();
              _onTagChange(alpha.toUpperCase());

            },
          ),
        )
    );
  }
  List<Widget> _buildChildren() {
    List<Widget> children = [
      ListView.builder(
          controller: _scrollController,
          itemCount: _cities.length,
          itemBuilder: (context, index) {
            bool offstage = false;
            if (index !=0 && _cities[index - 1].letter == _cities[index].letter) {
              offstage = true;
            }
            return Column(
              children: <Widget>[
                Offstage(
                  offstage: offstage,
                  child: Container(
                    height: topTagHeight,
                    alignment:Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 15.0),
                    color: Color(0xfff3f4f5),
                    child: Text(
                      _cities[index].letter.toUpperCase(),
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Color(0xff999999),
                      ),
                    ),
                  ),
                ),
                Container(
//                  height: itemHeight,
                  alignment:Alignment.centerLeft,
                  key: index == 0 ? _key0 : null,
                  child: Center(
                    child: ListTile(
                      title: Text(_cities[index].name, style: TextStyle(height: 1.0, fontSize: itemFontSize)),
                      onTap: () {
//                      print("OnItemClick: $model");
                        Navigator.pop(context,);
                      },
                    ),
                  ),
                )
              ],
            );
          }
      )
    ];
    if (_showTopOffstage) {
      children.add(Positioned(
        top: _topOffstateTop - 0.1,
        left: 0,
        right: 0,
        child: Offstage(
          offstage: false,
          child: Container(
            height: topTagHeight,

            alignment:Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 15.0),
            color: Colors.red,
            child: Text(
              'BBB',
              softWrap: true,
              style: TextStyle(
                fontSize: 14.0,
                color: Color(0xff999999),
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
    children.add(_buildAlphaAndTags());
    return children;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("title",
          )
        ),
        body: Column(
          children: <Widget>[
            TextField(),
            Container(
              child: Text("当前城市"),
              alignment: Alignment.centerLeft,
            ),
            Expanded(
              flex: 1,
              child: Stack(
                children:_buildChildren()
              )
            ),
          ],
        )
    );
  }
}
