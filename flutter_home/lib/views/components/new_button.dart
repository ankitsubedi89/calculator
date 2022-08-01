import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart'; 
import 'package:flutter/src/widgets/framework.dart';

class NewButton extends StatelessWidget {
  final onTap;
  final String text;
  const NewButton({Key? key, required this.onTap, this.text = 'Click Me'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 86, 158, 217),
        ),
        height: 60,
        width: 80,
        child: Center(child: Text(text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),),
      ),
    );
  }
}
