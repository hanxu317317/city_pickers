import 'package:flutter/material.dart';
import 'package:city_pickers/city_pickers.dart';
import 'package:flutter/cupertino.dart';
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutt2er',
      debugShowCheckedModeBanner: false,
      home: Main(),
    );
  }
}


class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {


  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        primaryColor: Color(0xFFC91B3A),
        backgroundColor: Color(0xFFEFEFEF),
        accentColor: Color(0xFF888888),
        textTheme: TextTheme(
          //设置Material的默认字体样式
          body1: TextStyle(color: Color(0xFF888888), fontSize: 16.0),
        ),

      ),
      home: Body(),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String _result;
  show(context) async {
    Result temp  = await CityPickers.showCityPicker(
      context: context,
//      locationCode: '640221',
      height: 400,
    );
    setState(() {
      _result = "${temp.toString()}";
    });
  }
  show2(conext) async {
    Result temp  = await CityPickers.showFullPageCityPicker(
      context: context,
    );
    setState(() {
      _result = "${temp.toString()}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plugin example app'),
      ),
      body: Center(
          child: Column(
            children: <Widget>[
              Text("result: ${_result.toString()}"),
              RaisedButton(
                onPressed: () {this.show(context);
                },
                child: Text("select"),
              ),
              RaisedButton(
                onPressed: () {this.show2(context);
                },
                child: Text("select2"),
              ),
            ],
          )
      ),
    );
  }
}


