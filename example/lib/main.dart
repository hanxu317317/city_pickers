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
  String _result;

  @override
  void initState() {
    super.initState();
  }

  show(context) async {
    Result temp  = await CityPickers.showCityPicker(
      context: context,
      locationCode: '640221',
      height: 400,
    );
    setState(() {
      _result = "${temp.toString()}";
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
              ],
            )
        ),
      ),
    );
  }
}
