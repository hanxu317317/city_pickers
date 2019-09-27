//
// Created with Android Studio.
// User: 三帆
// Date: 09/05/2019
// Time: 15:47
// email: sanfan.hx@alibaba-inc.com
// target:  处理locationCode相关
//
import '../../modal/result.dart';
import '../../modal/point.dart';
import '../../modal/base_citys.dart';

class Location {
  Map<String, dynamic> citiesData;

  Map<String, dynamic> provincesData;

  /// the target province user selected
  Point provincePoint;

  /// the target city user selected
  Point cityPoint;

  /// the target area user selected
  Point areaPoint;

  // standby
  // Point village;

  // 没有一次性构建整个以国为根的树. 动态的构建以省为根的树, 效率高.
  List<Point> provinces;

  Location({this.citiesData, this.provincesData});

  Result initLocation(String _locationCode) {
//    print("initLocation >>>> $_locationCode");

    CityTree cityTree =
        new CityTree(metaInfo: citiesData, provincesInfo: provincesData);

    int locationCode;
    Result locationInfo = new Result();
    if (_locationCode != null) {
      try {
        locationCode = int.parse(_locationCode);
      } catch (e) {
        print(ArgumentError(
            "The Argument locationCode must be valid like: '100000' but get '$_locationCode' "));
        return locationInfo;
      }
    }
    provincePoint = cityTree.initTreeByCode(locationCode);

    if (provincePoint == null || provincePoint.isNull) {
      return locationInfo;
    }
    locationInfo.provinceName = provincePoint.name;
    locationInfo.provinceId = provincePoint.code.toString();

    provincePoint.child.forEach((Point _city) {
      if (_city.code == locationCode) {
        cityPoint = _city;
      }

      /// 正常不应该在一个循环中, 如此操作, 但是考虑到地区码的唯一性, 可以在一次双层循环中完成操作. 避免第二层的循环查找
      _city.child.forEach((Point _area) {
        if (_area.code == locationCode) {
          cityPoint = _city;
          areaPoint = _area;
        }
      });
    });

    if (cityPoint != null && !cityPoint.isNull) {
      locationInfo.cityName = cityPoint.name;
      locationInfo.cityId = cityPoint.code.toString();
    }

    if (areaPoint != null && !areaPoint.isNull) {
      locationInfo.areaName = areaPoint.name;
      locationInfo.areaId = areaPoint.code.toString();
    }

    return locationInfo;
  }
}
