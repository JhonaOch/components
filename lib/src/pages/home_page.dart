import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/providers/menu_provider.dart';
import 'package:flutter_application_2/src/utils/icono_string_util.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componetes'),
      ),
      body:_lista(),
      
    );
  }


  Widget _lista (){
    
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: const [],
      builder:(context, AsyncSnapshot<List<dynamic>> snapshot){
        // print(snapshot.data);
        
        return ListView(
          children: _listaItems(snapshot.data,context),
        );
      } ,

    );
    
    // return ListView(
    //   children: _listaItems(),
    // );
  }

  List<Widget> _listaItems (data,context) {
   final List<Widget> opciones =[];
   data.forEach((opt){
     final widgetTem = ListTile(
       title:Text(opt['texto']),
       leading:getIcon(opt['icon']) ,
       trailing:const Icon(Icons.keyboard_arrow_right,color:Colors.blue)  ,
       onTap: (){

         Navigator.pushNamed(context, opt['ruta']);
      //    final route = MaterialPageRoute(
      //      builder: (context){
      //        return AlertPage();
      //      });
      //    Navigator.push(context, route);
      //  },
       }
     );

     opciones..add(widgetTem)
             ..add(const Divider());

   });
   return opciones;
  }
}