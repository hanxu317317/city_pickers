//
// Created with Android Studio.
// User: 三帆
// Date: 03/02/2019
// Time: 22:43
// email: sanfan.hx@alibaba-inc.com
// target:  xxx
//

import 'dart:convert';

/// CityPicker 返回的 **Result** 结果函数
class Result {
  /// provinceId
  String provinceId;

  /// cityId
  String cityId;

  /// areaId
  String areaId;

  /// provinceName
  String provinceName;

  /// cityName
  String cityName;

  /// areaName
  String areaName;

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
    Map<String, dynamic> obj = {
      'provinceName': provinceName,
      'provinceId': provinceId,
      'cityName': cityName,
      'cityId': cityId,
      'areaName': areaName,
      'areaId': areaId
    };
    obj.removeWhere((key, value) => value == null);

    return json.encode(obj);
  }
}
