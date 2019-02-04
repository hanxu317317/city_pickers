import '../meta/province.dart';
import '../src/util.dart';
import 'package:city_pickers/modal/point.dart';
import 'package:lpinyin/lpinyin.dart';




/// tree point

class CityTree {
  /// 元数据
  Map<String, dynamic> metaInfo;
  Cache _cache = new Cache();
  /// 结构话的数据
  /// data = Point(
  ///   letter,
  ///   name
  ///   code,
  ///   letter,
  ///   child: [
  ///     Point
  ///   ]
  /// )
  /// data = [
  ///   {
  ///     letter: 'Z',
  ///     name: '浙江',
  ///     code: 330000
  ///     child: [
  ///       letter: 'h',
  ///       name: '杭州',
  ///       child
  ///     ]
  ///   }
  /// ]
  Point tree;
  CityTree({
    this.metaInfo = citysData
  });

  /// 构建以省为根节点的树型结构
  initTree(int provinceId) {
    String _cacheKey = provinceId.toString();
    if (_cache.has(_cacheKey)) {
      return tree = _cache.get(_cacheKey);
    }

    String name = provinceData[provinceId.toString()];
    String letter = PinyinHelper.getFirstWordPinyin(name).substring(0, 1);
    var root = new Point(code: provinceId, letter: letter, child: [], name: name);
    tree = _buildTree(root, metaInfo[provinceId.toString()], metaInfo);
    _cache.set(_cacheKey, tree);
    return tree;
  }

  int _getProviceIdByCode(int code) {
    String _code = code.toString();
    List<String> keys  = citysData.keys.toList();
    for (int i = 0; i < keys.length; i++) {
      String key = keys[i];
      Map<String, dynamic> child = citysData[key];
      if (child.containsKey(_code)) {
        // 当前元素的父key在省份内
        if (provinceData.containsKey(key)) {
          return int.parse(key);
        }
        return _getProviceIdByCode(int.parse(key));
      }
    }
    return null;
  }

  // build tree by any code provinceId or cityCode or areaCode
  Point initTreeByCode(int code) {
    String _code = code.toString();
    if (provinceData[_code] != null) {
      return initTree(code);
    }
    int provinceId = _getProviceIdByCode(code);
    if (provinceId != null) {
      return initTree(provinceId);
    }
    return null;
  }
  /// 树的构建方法
  Point _buildTree(Point target, Map citys, Map meta) {
    if (citys == null || citys.isEmpty) {
      return target;
    } else {
      List<String> keys = citys.keys.toList();

      for (int i = 0; i < keys.length; i++) {
        String key = keys[i];
        Map value = citys[key];
        Point _point = new Point(
          code: int.parse(key),
          letter: value['alpha'],
          child: [],
          name: value['name'],
        );
        /// 用来规避
        /// 以下数据导致的死循环递归
        ///  "469027": {
        //        "469027": {
        //            "name": "乐东黎族自治县",
        //            "alpha": "l"
        //        }
        //    },
        if (citys.keys.length == 1)  {
          if (target.code.toString() == citys.keys.first) {
            continue;
          }
        }

        _point = _buildTree(_point, meta[key], meta);
        target.addChild(_point);
      }
    }
    return target;
  }
}
class Provinces {
  Map<String, String> metaInfo;
  Provinces({this.metaInfo = provinceData});

  // 获取省份数据
  get provinces {
    List<Point> provList = [];
    List<String> keys = metaInfo.keys.toList();
    for (int i = 0; i < keys.length; i++) {
      String name = metaInfo[keys[i]];
      provList.add(Point(
        code: int.parse(keys[i]),
        letter: PinyinHelper.getFirstWordPinyin(name).substring(0, 1),
        name: name
      ));

    }
    provList.sort((Point a, Point b) {
      return a.letter.compareTo(b.letter);
    });
    return provList;
  }
}
//main() {
//  var tree = new CityTree();
//  tree.initTree(460000);
//  print("treePo>>> ${tree.tree.toString()}");
//}
//

//main() {
//  var p = new Provinces(
////    metaInfo: provinceData
//  );
//  print("p.provinces ${p.provinces}");
//}