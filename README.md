Language: [English](https://github.com/hanxu317317/city_pickers/blob/master/README-en.md)
# city_pickers

中国的城市三级联动选择器

# Demo
<image src="https://img.alicdn.com/tfs/TB16H9XGCzqK1RjSZPcXXbTepXa-329-687.gif" style="width: 300px" />
<image src="https://img.alicdn.com/tfs/TB1CXEhLlLoK1RjSZFuXXXn0XXa-347-705.gif" style="width: 300px" />


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
// type 3
Result result2 = await CityPickers.showCitiesSelector(
  context: context,
);
```

### 注意事项

showCitiesSelector 是在版本:0.1.16中刚封装出的功能. 可能存在不稳定或者未知的bug. 欢迎大家使用的时候提出反馈与issue.

### CityPickers 静态方法

|Name|Type|Desc|
|:---------------|:--------|:----------|
|showCityPicker|Function|呼出弹出层,显示多级选择器 |
|showFullPageCityPicker|Function|呼出一层界面, 显示多级选择器|
|showCitiesSelector |Function|呼出一层, 显示支持字母定位城市选择器|


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
|citiesData|Map|[城市数据](https://github.com/hanxu317317/city_pickers/blob/master/lib/meta/province.dart)|选择器的城市与区的数据源|
|provincesData|Map|[省份数据](https://github.com/hanxu317317/city_pickers/blob/master/lib/meta/province.dart)|选择器的省份数据源|



### showFullPageCityPicker 参数说明

|Name|Type|Default|Desc|
|:---------------|:--------|:----|:----------|
|context|BuildContext|null|上下文对象|
|theme|ThemeData|Theme.of(context)| 主题, 可以自定义|
|locationCode|String|110000| 初始化地址信息, 可以是省, 市, 区的地区码|
|showType|ShowType|ShowType.pca| 三级联动, 显示类型|
|citiesData|Map|[城市数据](https://github.com/hanxu317317/city_pickers/blob/master/lib/meta/province.dart)|选择器的城市与区的数据源|
|provincesData|Map|[省份数据](https://github.com/hanxu317317/city_pickers/blob/master/lib/meta/province.dart)|选择器的省份数据源|

### showCitiesSelector 参数说明

|Name|Type|Default|Desc|
|:---------------|:--------|:----|:----------|
|context|BuildContext|null|上下文对象|
|theme|ThemeData|Theme.of(context)| 主题, 可以自定义|
|locationCode|String|110000| 初始化地址信息, 可以是省, 市, 区的地区码|
|title|String|城市选择器|弹出层界面标题|
|citiesData|Map|[城市数据](https://github.com/hanxu317317/city_pickers/blob/master/lib/meta/province.dart)|选择器的城市与区的数据源|
|provincesData|Map|[省份数据](https://github.com/hanxu317317/city_pickers/blob/master/lib/meta/province.dart)|选择器的省份数据源|
|sideBarStyle|[BaseStyle](https://github.com/hanxu317317/city_pickers/blob/develop/lib/src/cities_selector/cities_style.dart)|初始默认样式| 右侧字母索引集样式|
|cityItemStyle|[BaseStyle](https://github.com/hanxu317317/city_pickers/blob/develop/lib/src/cities_selector/cities_style.dart)|初始默认样式| 城市选项样式|
|topStickStyle|[BaseStyle](https://github.com/hanxu317317/city_pickers/blob/develop/lib/src/cities_selector/cities_style.dart)|初始默认样式| 顶部索引吸顶样式|




# 数据来源

 [National Bureau of Statistics](http://www.stats.gov.cn/tjsj/tjbz/tjyqhdmhcxhfdm/2018/index.html)


# 声明
本项目Example部份代码与样式, 参考借鉴[Flutter Go](https://github.com/alibaba/flutter-go/), **flutter go** 是flutter 开发者帮助 APP，包含 flutter 常用 140+ 组件的demo 演示与中文文档


### To Do List

- [x] 城市选择器, 借鉴点评
- [ ] 支持拼音等模糊搜索
- [ ] 加入单元测试

