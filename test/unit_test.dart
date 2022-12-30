import 'package:city_pickers/city_pickers.dart';
import 'package:city_pickers/meta/province.dart';
import 'package:flutter_test/flutter_test.dart';

/// Created by ipcjs on 2022/11/8.

void main() {
  test('Point.pinyin', () {
    final zhongGuo = Point(children: [], name: '中国').pinyin;
    expect(zhongGuo?.short, 'zg');
    expect(zhongGuo?.full, 'zhongguo');

    final china = Point(children: [], name: 'china').pinyin;
    expect(china, null);
  });
  group('CitiesUtils', () {
    test('getAllCitiesByMeta', () {
      final p1 = CitiesUtils.getAllCitiesByMeta(provincesData, citiesData)
          .map((e) => e.toString());
      final p2 = CitiesUtils.getAllCitiesByMeta(provincesData, citiesData)
          .map((e) => e.toString());

      expect(p1, p2);
    });
  });
}
