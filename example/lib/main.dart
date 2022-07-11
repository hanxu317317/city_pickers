import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'src/item_container.dart';
import 'view/show_city_picker.dart';
import 'view/wip.dart';
import 'view/show_full_page_picker.dart';
import 'view/util_getLocationInfo.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: const Color(0xFFC91B3A),
          backgroundColor: const Color(0xFFEFEFEF),
          accentColor: const Color(0xFF888888),
          textTheme: const TextTheme(
            //设置Material的默认字体样式
            bodyMedium: TextStyle(color: Color(0xFF888888), fontSize: 16.0),
          )),
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFFC91B3A),
      ),
      themeMode: ThemeMode.system,
      title: 'Welcome to Flutt2er',
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/name': (_) => const ShowCityPicker(),
        '/full_page': (_) => const ShowFullPageCityPicker(),
        '/city_select': (_) => const WorkInProgress(),
        '/util_getLocationInfo': (_) => const UtilGetLocationInfo()
      },
      home: const Body(),
    );
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List demoList = [
    {"icon": Icons.place, "name": "ios选择器", "routerName": '/name'},
    {"icon": Icons.fullscreen, "name": "三级全屏选择器", "routerName": '/full_page'},
    {
      "icon": Icons.location_city,
      "name": "城市选择器",
      "routerName": '/city_select'
    },
    {
      "icon": Icons.location_city,
      "name": "内置工具类",
      "routerName": '/util_getLocationInfo'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('CityPickers Examples'),
        ),
        body: ItemContainer(
          itemList: demoList,
        ));
  }
}
