import 'package:flutter/material.dart';


// ignore: use_key_in_widget_constructors
class HomeTemp extends StatelessWidget {

  final opciones = ['Uno','Dos','Tres','Cuatro','Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // ignore: prefer_const_constructors
        title: Text('Componentes Temp'),

      ),
      body:ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children:_crearItemsCorta()

      ),
    );
  }

  // List<Widget> _crearItems(){
  //   // ignore: deprecated_member_use, unused_local_variable
  //   List<Widget> list = <Widget>[];
  //   for (var opt in opciones) {
  //     final tempWidget = ListTile(
  //       title: Text(opt),
  //     );
  //     list.add(tempWidget);
  //     // ignore: use_full_hex_values_for_flutter_colors
  //     list.add( Divider(color: Color.fromARGB(255, 17, 0, 255),));

      
  //   }
  //   return list;
  // }

  List<Widget> _crearItemsCorta(){
    // var widgets =
    return opciones.map((item){
      return Column(
        children: [
          ListTile(title: Text(item),
          subtitle: const Text("Holasddd"),
          leading: const Icon(Icons.access_alarm_rounded),
          trailing: const Icon(Icons.arrow_circle_right),
          onTap:(){} ,
          ),
            const Divider(),
         
        ],
      
      );
    }).toList();
    //return widgets;

  }
}