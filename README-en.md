# city_pickers

this is china area selector.

# Demo
<image src="https://img.alicdn.com/tfs/TB16H9XGCzqK1RjSZPcXXbTepXa-329-687.gif" style="width: 300px" />

# Getting Started


In your flutter project add the dependency:

```
dependencies:
  ...
    city_pickers:^0.0.1
```

For help getting started with Flutter, view the online [documentation](https://flutter.io/).

# Usage example
Import city_pickers.dart

```
import 'package:city_pickers/city_pickers.dart';
```

Demo code to show selector

```
Result result = await CityPickers.showCityPicker(
  context: context,
);
```



### CityPickers attributes

|Name|Type|Desc|
|:---------------|:--------|:----------|
|showCityPicker|Function|the handle show selector |
|showFullPageCityPicker|Function|the handle show full screen selector |


### showCityPicker params

|Name|Type|Default|Desc|
|:---------------|:--------|:----|:----------|
|context|BuildContext|null|context|
|theme|ThemeData|Theme.of(context)| theme|
|locationCode|String|110000| initial location|
|height|double|300| container height|
|showType|ShowType|ShowType.pca| selector show type|
|barrierOpacity|double|0.5|pop modal opacity|
|barrierDismissible|bool|true| dismiss this route by tapping the modal barrier|


### showFullPageCityPicker params

|Name|Type|Default|Desc|
|:---------------|:--------|:----|:----------|
|context|BuildContext|null|context|
|theme|ThemeData|Theme.of(context)| theme|
|locationCode|String|110000| initial location|
|showType|ShowType|ShowType.pca| selector show type|



# Date Statement

 The data information come from [National Bureau of Statistics](https://www.stats.gov.cn/tjsj/tjbz/tjyqhdmhcxhfdm/2018/index.html)



# Statement
This project's example code and style, reference with[Flutter Go](https://github.com/alibaba/flutter-go/), **flutter go** help developers get started quickly Flutter
