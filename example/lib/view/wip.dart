//
// Created with Android Studio.
// User: 三帆
// Date: 13/02/2019
// Time: 21:02
// email: sanfan.hx@alibaba-inc.com
// tartget:  xxx
//

import 'package:flutter/material.dart';

class WorkInProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff25a89c),
        appBar: AppBar(
          title: const Text('CityPickers Examples'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 200),
              Text("Working In Progress", style: TextStyle(fontSize: 20, color: Colors.white),),
              Image.asset(
                'assets/wip.jpeg',
                width: 200,
              ),
            ],
          ),
        )
    );
  }
}
