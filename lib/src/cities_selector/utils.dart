//
// Created with Android Studio.
// User: 三帆
// Date: 21/02/2019
// Time: 10:37
// email: sanfan.hx@alibaba-inc.com
// tartget:  xxx
//

import 'package:collection/collection.dart';
import 'package:lpinyin/lpinyin.dart';

import '../../modal/base_citys.dart';
import '../../modal/point.dart';

class CitiesSearcher {
  final List<Point> _cities;
  CitiesSearcher(this._cities);

  String _prevQuery = '';
  late List<Point> _prevQueryResult = _cities;

  List<Point> search(String text) {
    final query = text.trim().toLowerCase();
    if (query == _prevQuery) {
      // 查询条件相同, 结果相同
      return _prevQueryResult;
    }

    final cities = query.startsWith(_prevQuery)
        // 查询条件范围变窄, 可以直接在上次的查询结果基础上过滤
        ? _prevQueryResult
        : _cities;

    final result = <Point>[];
    final queryPinyin = ChineseHelper.containsChinese(query)
        ? null
        : query.replaceAll(RegExp(r'\s'), '');

    for (final city in cities) {
      if (queryPinyin != null) {
        final pinyin = city.pinyin;
        if (pinyin != null) {
          if (pinyin.short.startsWith(queryPinyin) ||
              pinyin.full.startsWith(queryPinyin)) {
            result.add(city);
            continue;
          }
        }
      }
      if ((city.letter?.toLowerCase().startsWith(query) == true) ||
          city.lowerCaseName.contains(query)) {
        result.add(city);
      }
    }
    return result;
  }
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
    // 归并排序, 结果稳定
    mergeSort<Point>(
      cities,
      compare: (p0, p1) {
        final c0 = p0.letter!.codeUnitAt(0);
        final c1 = p1.letter!.codeUnitAt(0);
        return c0.compareTo(c1);
      },
    );
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

/// 热闹城市对象
class HotCity {
  final String name;
  final String id;
  final String tag;

  HotCity({required this.name, required this.id, this.tag = "★"});
}
