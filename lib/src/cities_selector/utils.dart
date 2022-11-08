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

class TagCount {
  int count;
  String letter;

  TagCount({required this.count, required this.letter});
}

class CitiesUtils {
  /// 获取城市选择器所有的数据
  static List<Point> getAllCitiesByMeta(
      Map<String, String> provinceMeta, Map<String, dynamic> citiesMeta) {
    List<Point> trees = [];
    List<Point> cities = [];
    CityTree citiesTreeBuilder =
        new CityTree(metaInfo: citiesMeta, provincesInfo: provinceMeta);
    provinceMeta.forEach((key, value) {
      trees.add(citiesTreeBuilder.initTree(key));
    });
    trees.forEach((Point tree) {
      cities.addAll(tree.children);
    });
    cities.sort((Point a, Point b) {
      return a.letter!.codeUnitAt(0) - b.letter!.codeUnitAt(0);
    });
    return cities;
  }

  static List<String> getValidTagsByCityList(List<Point> citiesList) {
    List<String> validTags = [];

    /// 先分类
    String lastTag = '';
    citiesList.forEach((Point item) {
      if (item.letter != lastTag) {
        validTags.add(item.letter!);
        lastTag = item.letter!;
      }
    });
    return validTags;
  }
}

// 热闹城市对象
class HotCity {
  final String name;
  final String id;
  final String tag;

  HotCity({required this.name, required this.id, this.tag = "★"});
}
