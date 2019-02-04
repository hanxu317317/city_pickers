# city_pickers

this is china area selector.

# Demo
<image src="https://img.alicdn.com/tfs/TB1_rnrFXzqK1RjSZFCXXbbxVXa-362-751.gif" style="width: 300px" />

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


### showCityPicker params 

|Name|Type|Default|Desc|
|:---------------|:--------|:----|:----------|
|context|BuildContext|null|context|
|locationCode|String|110000| initial location|
|height|double|300| container height|


# Date Statement

 The data information come from [National Bureau of Statistics](http://www.stats.gov.cn/tjsj/tjbz/tjyqhdmhcxhfdm/2018/index.html)


