import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ), 
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
               
              ],
          ),

          Container(
              height: 100,
              width: 100,
              color: Colors.pink,
            ),

             Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ), 
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),

              Container(
                height: 100,
                width: 100,
                color: Colors.red,
               
             )],
          ),



        ]),
        
        

      ),

    );
    
  }
}