//
// Created with Android Studio.
// User: 三帆
// Date: 21/02/2019
// Time: 10:37
// email: sanfan.hx@alibaba-inc.com
// tartget:  xxx
//

import 'package:collection/collection.dart';
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
    Map<String, String> provinceMeta,
    Map<String, dynamic> citiesMeta,
  ) {
    CityTree citiesTreeBuilder = new CityTree(
      metaInfo: citiesMeta,
      provincesInfo: provinceMeta,
    );

    final provinces = provinceMeta.keys
        .map((provinceId) => citiesTreeBuilder.initTree(provinceId))
        .toList();

    List<Point> cities = [];
    for (final province in provinces) {
      for (final city in province.children) {
        if (city.isClassificationNode) {
          // city级的"分类节点", 下面是"省直辖县级行政区", 这里也把他们看作是一个city
          cities.addAll(city.children);
        } else {
          cities.add(city);
        }
      }
    }

    return cities //
      ..sortBy<num>((it) => it.letter!.codeUnitAt(0));
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
