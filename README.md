# city_pickers

这是一款适合国内用户使用的三级联动, 地区信息选择器的集合, 现在暂时只支持一款. 后续会持续更新.

# 效果展示
<image src="https://img.alicdn.com/tfs/TB1_rnrFXzqK1RjSZFCXXbbxVXa-362-751.gif" style="width: 300px" />

# 使用方法

pubspec.yaml
```
city_pickers:^0.0.1
```

main.dart
```
import 'package:flutter/material.dart';
import 'package:city_pickers/city_pickers.dart';
...

  show(context) async {
    Result temp  = await CityPickers.showCityPicker(
      context: context,
      locationCode: '640221',
      height: 400,
    );
  }
  @override
  Widget build(BuildContext context) {
    ...
    RaisedButton(
      onPressed: () {this.show(context);
      },
      child: Text("select"),
    )
  }

```

### CityPickers 属性

|名称|类型|描述|
|:---------------|:--------|:----------|
|showCityPicker|Function|显示三级联动, 地区选择器|


### showCityPicker 参数说明

|名称|类型|默认值|描述|
|:---------------|:--------|:----|:----------|
|context|BuildContext|null|上下文对象|
|locationCode|String|110000| 初始化位置信息|
|height|double|300| 弹出层的容器高度|


# 数据声明

组件数据源来自于:[国家统计局](http://www.stats.gov.cn/tjsj/tjbz/tjyqhdmhcxhfdm/2018/index.html)


