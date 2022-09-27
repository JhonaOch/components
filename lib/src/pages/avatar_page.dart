// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


// ignore: use_key_in_widget_constructors
class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  
        title: Text('Avatar Page'),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/avatar-2-1583234102.jpg'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
           image: NetworkImage('https://i0.wp.com/hipertextual.com/wp-content/uploads/2020/09/hipertextual-avatar-2-logra-concluir-su-rodaje-pese-covid-19-2020475848.jpg?fit=1200%2C675&ssl=1'),
           placeholder: AssetImage('assets/jar-loading.gif'),
           fadeInDuration: Duration(milliseconds: 200),
      ),

      ),
    );
  }
}