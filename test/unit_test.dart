import 'package:city_pickers/city_pickers.dart';
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
}
