import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../util.dart';

class CountryTabPicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        new Column(
          children: [
            RichText(
                text: TextSpan(
                  text: "this is a",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.red,
                  ),
                )
            ),
            Container(
                height: 2,
                width: 10,
                decoration: BoxDecoration(color: Colors.green, boxShadow: <BoxShadow>[
                  BoxShadow(
                    color:Colors.red,
                  ),
                ]
                )
            )
          ],
        ),
        Text('this is 2'),
      ],
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
    );
  }
}
