/**
 * Created with Android Studio.
 * User: 三帆
 * Date: 03/02/2019
 * Time: 22:43
 * email: sanfan.hx@alibaba-inc.com
 * tartget:  xxx
 */

class Result {
  final String provinceId;
  final String cityId;
  final String areaId;

  final String provinceName;
  final String cityName;
  final String areaName;
  Result({this.provinceId, this.cityId, this.areaId, this.provinceName, this.cityName, this.areaName});
  @override
  String toString() {
    // TODO: implement toString
    return "{provinceName: $provinceName, provinceId: $provinceId, cityName: $cityName, cityId: $cityId, areaName: $areaName, areaId: $areaId}";
  }
}