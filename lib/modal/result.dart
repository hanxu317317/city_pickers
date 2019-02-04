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
  /// provinceId
  final String provinceId;

  /// cityId
  final String cityId;

  /// areaId
  final String areaId;

  /// provinceName
  final String provinceName;

  /// cityName
  final String cityName;

  /// areaName
  final String areaName;

  Result(
      {this.provinceId,
      this.cityId,
      this.areaId,
      this.provinceName,
      this.cityName,
      this.areaName});

  /// string json
  @override
  String toString() {
    //TODO: implement toString
    return "{provinceName: $provinceName, provinceId: $provinceId, cityName: $cityName, cityId: $cityId, areaName: $areaName, areaId: $areaId}";
  }
}
