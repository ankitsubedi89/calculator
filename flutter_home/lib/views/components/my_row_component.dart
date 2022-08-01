import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyRowComponent extends StatelessWidget {
  const MyRowComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.purple,
          ),
          Container(
            height: 150,
            width: 30,
            color: Colors.red,
          ),
          Container(
            height: 200,
            width: 250,
            color: Colors.pink,
          ),
        ]
        ),
      ),
    );
    
  }
}