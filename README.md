Language: [English](https://github.com/hanxu317317/city_pickers/blob/master/README-en.md)
# city_pickers

中国的城市三级联动选择器

# Demo
<image src="https://img.alicdn.com/tfs/TB16H9XGCzqK1RjSZPcXXbTepXa-329-687.gif" style="width: 300px" />

# 开始

在flutter的项目文件中增加依赖

```
dependencies:
  ...
    city_pickers:^0.0.1
```

关于如何运行flutter项目, 参考官方文档[documentation](https://flutter.io/).

# 使用方法

Import city_pickers.dart

```
import 'package:city_pickers/city_pickers.dart';
```

简单使用方法

```
...
// type 1
Result result = await CityPickers.showCityPicker(
  context: context,
);
// type 2
Result result2 = await CityPickers.showFullPageCityPicker(
  context: context,
);
```



### CityPickers 静态方法

|Name|Type|Desc|
|:---------------|:--------|:----------|
|showCityPicker|Function|呼出弹出层,显示多级选择器 |
|showFullPageCityPicker|Function|呼出一层界面, 显示多级选择器|


### showCityPicker 参数说明

|Name|Type|Default|Desc|
|:---------------|:--------|:----|:----------|
|context|BuildContext|null|上下文对象|
|theme|ThemeData|Theme.of(context)| 主题, 可以自定义|
|locationCode|String|110000| 初始化地址信息, 可以是省, 市, 区的地区码|
|height|double|300| 弹出层的高度, 过高或者过低会导致容器报错|
|showType|ShowType|ShowType.pca| 三级联动, 显示类型|
|barrierOpacity|double|0.5|弹出层的背景透明度, 应该是大于0, 小于1|
|barrierDismissible|bool|true| 是否可以通过点击弹出层背景, 关闭弹出层|


### showFullPageCityPicker 参数说明

|Name|Type|Default|Desc|
|:---------------|:--------|:----|:----------|
|context|BuildContext|null|上下文对象|
|theme|ThemeData|Theme.of(context)| 主题, 可以自定义|
|locationCode|String|110000| 初始化地址信息, 可以是省, 市, 区的地区码|
|showType|ShowType|ShowType.pca| 三级联动, 显示类型|



# 数据来源

 [National Bureau of Statistics](http://www.stats.gov.cn/tjsj/tjbz/tjyqhdmhcxhfdm/2018/index.html)


