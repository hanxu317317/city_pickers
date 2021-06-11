//
// Created with Android Studio.
// User: 三帆
// Date: 09/05/2019
// Time: 15:42
// email: sanfan.hx@alibaba-inc.com
// target: 开放给city_pickers直接调用的工具方法
//

import 'location.dart';
import 'package:city_pickers/modal/result.dart';

class CityPickerUtil {
  Map<String, dynamic> citiesData;
  Map<String, String> provincesData;

  CityPickerUtil({required this.citiesData, required this.provincesData});

  Result getAreaResultByCode(String code) {
    Location location =
        new Location(citiesData: citiesData, provincesData: provincesData);
    return location.initLocation(code);
  }
}
