///
// Created with Android Studio.
// User: 三帆
// Date: 03/02/2019
// Time: 22:43
// email: sanfan.hx@alibaba-inc.com
// tartget:  xxx
//

/// CityPicker 返回的 **Result** 结果函数
class Result {
  /// 省分id
  final String provinceId;

  /// 城市id
  final String cityId;

  /// 地区id
  final String areaId;

  /// 省份名称
  final String provinceName;

  /// 城市名称
  final String cityName;

  /// 地区名称
  final String areaName;

  Result({this.provinceId, this.cityId, this.areaId, this.provinceName, this.cityName, this.areaName});

  /// 返回String类型的json数据
  @override
  String toString() {
   //TODO: implement toString
    return "{provinceName: $provinceName, provinceId: $provinceId, cityName: $cityName, cityId: $cityId, areaName: $areaName, areaId: $areaId}";
  }
}