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


## CityPickers 静态方法

|Name|Type|Desc|
|:---------------|:--------|:----------|
|showCityPicker|Function|呼出弹出层,显示多级选择器 |
|showFullPageCityPicker|Function|呼出一层界面, 显示多级选择器|
|showCitiesSelector |Function|呼出一层, 显示支持字母定位城市选择器|
|utils|Function|获取utils接口的钩子|



### showCityPicker 参数说明

|Name|Type|Default|Desc|
|:---------------|:--------|:----|:----------|
|context|BuildContext||上下文对象|
|theme|ThemeData|Theme.of(context)| 主题, 可以自定义|
|locationCode|String|110000| 初始化地址信息, 可以是省, 市, 区的地区码|
|height|double|300| 弹出层的高度, 过高或者过低会导致容器报错|
|showType|ShowType|ShowType.pca| 三级联动, 显示类型|
|barrierOpacity|double|0.5|弹出层的背景透明度, 应该是大于0, 小于1|
|barrierDismissible|bool|true| 是否可以通过点击弹出层背景, 关闭弹出层|
|cancelWidget|Widget||用户自定义取消按钮|
|confirmWidget| Widget || 用户自定义确认按钮 |
|itemExtent|double||目标框高度|
|itemBuilder|Widget||item生成器, function(String value, List<String> lists, item){}, 当itemBuilder不为空的时候. 必须设置itemExtent|
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
|hotCities|List\<HotCity\>|null|热门城市|
|sideBarStyle|[BaseStyle](https://github.com/hanxu317317/city_pickers/blob/develop/lib/src/cities_selector/cities_style.dart)|初始默认样式| 右侧字母索引集样式|
|cityItemStyle|[BaseStyle](https://github.com/hanxu317317/city_pickers/blob/develop/lib/src/cities_selector/cities_style.dart)|初始默认样式| 城市选项样式|
|topStickStyle|[BaseStyle](https://github.com/hanxu317317/city_pickers/blob/develop/lib/src/cities_selector/cities_style.dart)|初始默认样式| 顶部索引吸顶样式|


### utils 说明
utils 是用来封装常用的一些方法, 方便使用者能更好的使用该插件. 使用者通过以下方式声明实例, 可以**获取所有的工具类方法**

```
// 声明实例
CityPickerUtil cityPickerUtils = CityPickers.utils();
```

#### Result getAreaResultByCode(String code)

使用者通过地区ID, 获取所在区域的省市县等相关信息. 当未查询到具体信息. 返回空的Result对象.

```
print('result>>> ${cityPickerUtils.getAreaResultByCode('100100)}');

// 输出为: result>>>> {"provinceName":"北京市","provinceId":"110000","cityName":"东城区","cityId":"110101"}
```




# 数据来源

 [National Bureau of Statistics](https://www.stats.gov.cn/tjsj/tjbz/tjyqhdmhcxhfdm/2018/index.html)


# 声明
本项目Example部份代码与样式, 参考借鉴[Flutter Go](https://github.com/alibaba/flutter-go/), **flutter go** 是flutter 开发者帮助 APP，包含 flutter 常用 140+ 组件的demo 演示与中文文档


### To Do List

- [x] 城市选择器, 借鉴点评
- [ ] 支持拼音等模糊搜索
- [ ] 加入单元测试

