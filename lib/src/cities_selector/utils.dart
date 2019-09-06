//
// Created with Android Studio.
// User: 三帆
// Date: 21/02/2019
// Time: 10:37
// email: sanfan.hx@alibaba-inc.com
// tartget:  xxx
//

import 'package:flutter/material.dart';

import '../../modal/base_citys.dart';
import '../../modal/point.dart';

// 城市列表偏移量结构
class CityOffsetRange {
  double start;
  double end;
  String tag;

  CityOffsetRange({this.start, this.end, this.tag});
}

class TagCount {
  int count;
  String letter;

  TagCount({this.count, this.letter});
}

class CitiesUtils {
  /// 获取城市选择器所有的数据
  static List<Point> getAllCitiesByMeta(
      Map provinceMeta, Map<String, dynamic> citiesMeta) {
    List<Point> trees = [];
    List<Point> cities = [];
    CityTree citiesTreeBuilder =
        new CityTree(metaInfo: citiesMeta, provincesInfo: provinceMeta);
    provinceMeta.forEach((key, value) {
      trees.add(citiesTreeBuilder.initTree(int.parse(key)));
    });
    trees.forEach((Point tree) {
      cities.addAll(tree.child);
    });
    cities.sort((Point a, Point b) {
      return a.letter.codeUnitAt(0) - b.letter.codeUnitAt(0);
    });
    cities.forEach((Point point) {
      point.letter = point.letter.toUpperCase();
    });
    return cities;
  }

  static List<String> getValidTagsByCityList(List<Point> citiesList) {
    List<String> validTags = [];

    /// 先分类
    String lastTag = '';
    citiesList.forEach((Point item) {
      if (item.letter != lastTag) {
        validTags.add(item.letter);
        lastTag = item.letter;
      }
    });
    return validTags;
  }

  static List<CityOffsetRange> getOffsetRangeByCitiesList(
      {@required List<Point> lists,
      @required double itemHeight,
      @required double tagHeight}) {
    List<TagCount> categoriesList = [];
    List<CityOffsetRange> result = [];

    /// 先分类
    String lastTag = '';
    lists.forEach((Point item) {
      if (item.letter != lastTag) {
        categoriesList.add(TagCount(letter: item.letter, count: 0));
        lastTag = item.letter;
      }
    });
    lists.forEach((Point item) {
      TagCount target = categoriesList.firstWhere((TagCount tagCount) {
        return tagCount.letter == item.letter;
      });
      target.count += 1;
    });
    categoriesList.forEach((TagCount item) {
//      print("item: ${item.letter}, ${item.count}");
      double start = result.isNotEmpty ? result.last.end : 0;
      result.add(CityOffsetRange(
          start: start,
          end: start + item.count * itemHeight + tagHeight,
          tag: item.letter.toUpperCase()));
    });
    return result;
  }
}

// 热闹城市对象
class HotCity {
  final String name;
  final int id;
  final String tag;
  HotCity({@required this.name, @required this.id, this.tag = "★"});
}
