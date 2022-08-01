import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_home/views/components/new_button.dart';

class SecondScreen extends StatefulWidget {
  final int counter;
  final add;
  final sub;
  const SecondScreen({
    Key? key,
    required this.counter,
    required this.add,
    required this.sub,
  }) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  var newCounter = 0;
  @override
  void initState() {
    super.initState();
    newCounter = widget.counter;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Second Screen'),
        ),
        body: Center(
          child: Column(children: [
            Text(newCounter.toString(),
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              NewButton(
                onTap: () => secondAdd(),
                text: '+',
              ),
              NewButton(
                onTap: () => secondSub(),
                text: '-',
              ),
            ]),
            NewButton(
                onTap: () => Navigator.pop(context),
                text: 'Back',)
          ]),
        ),
      ),
    );
  }

  secondAdd() {
    newCounter++;
    widget.add();
    setState(() {});
  }

  secondSub() {
    newCounter--;
    widget.sub();
    setState(() {});
  }
}
