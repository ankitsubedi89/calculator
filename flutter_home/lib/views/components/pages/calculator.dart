import 'package:flutter/material.dart';
import 'package:flutter_home/views/components/new_button.dart';


class Calculator extends StatefulWidget {
  final text;
  const Calculator({Key? key, this.text}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  int? firstNum;
  int? secondNum;
  String history = '';
  String textToDisplay = '';
  String? result ;
  String? operation ;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Center(child: Text('Calculator')),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                alignment: Alignment(1.0, .0),
                padding: EdgeInsets.only(right: 12),
                child: Text(
                  textToDisplay,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.black38),
                )),
            Container(
              alignment: Alignment(1.0, 1.0),
              padding: EdgeInsets.all(12),
              child: Text(
                textToDisplay,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NewButton(
                  text: 'AC',
                  onTap: onClick,
                ),
                NewButton(
                  text: 'C',
                  onTap: onClick,
                ),
                NewButton(
                  text: '<',
                  onTap: onClick,
                ),
                NewButton(
                  text: '/',
                  onTap: onClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NewButton(
                  text: '9',
                  onTap: onClick,
                ),
                NewButton(
                  text: '8',
                  onTap: onClick,
                ),
                NewButton(
                  text: '7',
                  onTap: onClick,
                ),
                NewButton(
                  text: 'X',
                  onTap: onClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NewButton(
                  text: '6',
                  onTap: onClick,
                ),
                NewButton(
                  text: '5',
                  onTap: onClick,
                ),
                NewButton(
                  text: '4',
                  onTap: onClick,
                ),
                NewButton(
                  text: '-',
                  onTap: onClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NewButton(
                  text: '3',
                  onTap: onClick,
                ),
                NewButton(
                  text: '2',
                  onTap: onClick,
                ),
                NewButton(
                  text: '1',
                  onTap: onClick,
                ),
                NewButton(
                  text: '+',
                  onTap: onClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NewButton(
                  text: '+/-',
                  onTap: onClick,
                ),
                NewButton(
                  text: '0',
                  onTap: onClick,
                ),
                NewButton(
                  text: '00',
                  onTap: onClick,
                ),
                NewButton(
                  text: '=',
                  onTap: onClick,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  onClick(String btnValue) {
    print(btnValue);
    if (btnValue == 'C') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      result = '';
    } else if (btnValue == 'AC') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      result = '';
      history = '';
    } else if (btnValue == '+' ||
        btnValue == '-' ||
        btnValue == 'X' ||
        btnValue == '/') {
      firstNum = int.parse(textToDisplay);
      result = '';
      operation = btnValue;
    } else if (btnValue == '=') {
      secondNum = int.parse(textToDisplay);
      if (operation == '+') {
        result = (firstNum! + secondNum!).toString();
        history =
            firstNum!.toString() + operation.toString() + secondNum!.toString();
      }
      if (operation == '-') {
        result = (firstNum! - secondNum!).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == 'X') {
        result = (firstNum! * secondNum!).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '/') {
        result = (firstNum! / secondNum!).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else {
      result = int.parse(textToDisplay + btnValue).toString();
    }
    setState(() {
      textToDisplay = result!;
    });
  }
}
