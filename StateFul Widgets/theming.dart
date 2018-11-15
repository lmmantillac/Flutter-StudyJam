

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Theming extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Hello!',
            style: TextStyle(fontSize: 36.0),
          ),
          Theme.of(context).platform == TargetPlatform.iOS
              ? CupertinoSwitch(
                  value: true,
                  onChanged: (bool toggled) {},
                )
              : Switch(
                  value: true,
                  onChanged: (bool toggled) {},
                ),
                Theme.of(context).platform == TargetPlatform.iOS
              ? CupertinoButton(
                  value: true,
                  onChanged: (bool toggled) {},
                )
              : RaisedButton(
                  textColor: Colors.red,
                  onChanged: (bool toggled) {},
                ),
        
        ],
        
      ),
    );
  }
}