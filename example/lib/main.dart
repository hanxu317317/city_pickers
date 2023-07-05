import 'package:flutter/material.dart';
import 'src/item_container.dart';
import 'view/show_city_picker.dart';
import 'view/wip.dart';
import 'view/show_full_page_picker.dart';
import 'view/util_getLocationInfo.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var useMaterial3 = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Color(0xFFC91B3A),
          background: Color(0xFFEFEFEF),
          secondary: Color(0xFF888888),
        ),
        textTheme: const TextTheme(
          //设置Material的默认字体样式
          bodyMedium: TextStyle(color: Color(0xFF888888), fontSize: 16.0),
        ),
        useMaterial3: useMaterial3,
      ),
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
      home: Body(
        useMaterial3: useMaterial3,
        onUseMaterial3Changed: (v) => setState(
          () {
            useMaterial3 = v;
          },
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.useMaterial3,
    required this.onUseMaterial3Changed,
  }) : super(key: key);

  final bool useMaterial3;
  final ValueChanged<bool> onUseMaterial3Changed;

  static final List _demoList = [
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
          actions: [
            Tooltip(
              message: 'useMaterial3',
              child: Switch(
                value: useMaterial3,
                onChanged: onUseMaterial3Changed,
              ),
            )
          ],
        ),
        body: ItemContainer(
          itemList: _demoList,
        ));
  }
}
