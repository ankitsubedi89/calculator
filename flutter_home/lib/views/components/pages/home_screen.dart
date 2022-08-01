import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'second_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home Screen'),
        ),
        body: Center(
          child: Column(children: [
            Text(
              counter.toString(),
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              ElevatedButton(
                  onPressed: () {
                    add();
                  },
                  child: const Text('+')),
              ElevatedButton(
                  onPressed: () {
                    sub();
                  },
                  child: const Text('-')),
            ]),
            ElevatedButton(
                onPressed: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SecondScreen(
                                counter: counter, add: add, sub: sub,
                              )));
                }),
                child: const Text('Go To Next Page'))
          ]),
        ),
      ),
    );
  }

  add() {
    counter = counter + 1;
    setState(() {});
  }

  sub(){
    counter = counter - 1;
    setState(() {});

  }
}
