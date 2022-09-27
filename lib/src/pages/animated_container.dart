// ignore_for_file: prefer_final_fields, unused_local_variable

import 'dart:math';

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class AnimatedPage extends StatefulWidget {
 

  @override
  State<AnimatedPage> createState() => _AnimatedPageState();
}

class _AnimatedPageState extends State<AnimatedPage> {
  double _width = 50.0;
  double _height =50.0;
  Color _color = Colors.pink;
  BorderRadius _borderRadius =BorderRadius.circular(8.0);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title:Text('Animated Container'),

      ),

      body:Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color,
          ),
          // ignore: prefer_const_constructors
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,

        ),
      ),
      floatingActionButton:FloatingActionButton(
        // ignore: prefer_const_constructors
        child:Icon(Icons.play_arrow_outlined),
        // ignore: prefer_const_constructors
        backgroundColor: Color.fromARGB(255, 7, 105, 11),
        onPressed: _cambiarlargo,
      ) ,


    );
  }

  void _cambiarlargo(){
   final random = Random();
    setState(() {
      _height=random.nextInt(300).toDouble();
      _width=random.nextInt(300).toDouble();
      _color= Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);

      _borderRadius=BorderRadius.circular(random.nextInt(100).toDouble());

      
    });
    

  }
}