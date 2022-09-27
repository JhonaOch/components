// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';


// ignore: use_key_in_widget_constructors
class CardPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),

      ),
      body:ListView(
        padding: EdgeInsets.all(10.0),
          children: [
            _cardTipo1(),
            SizedBox(height:30.0),
            _cardTipo2(),
             SizedBox(height:30.0),
              _cardTipo1(),
            SizedBox(height:30.0),
            _cardTipo2(),
             SizedBox(height:30.0),
              _cardTipo1(),
            SizedBox(height:30.0),
            _cardTipo2(),
             SizedBox(height:30.0),
              _cardTipo1(),
            SizedBox(height:30.0),
            _cardTipo2(),
             SizedBox(height:30.0),
          ],



      ),
      );
  }

 Widget _cardTipo1() {

   return Card(
     elevation: 10.0,
     shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(20.0) ),
     child:Column(
       children: [
         ListTile(
           leading: Icon(Icons.photo_album,color:Colors.blue),
           title:Text('Tarjeta 1'),
           subtitle: Text('Aqui tenemos en esta tarjeta la descripvion fdddddddddddddd fdddddddddd fggggggggggggggggggg fggggggggggggggggg '),
         ),
         Row(
           mainAxisAlignment: MainAxisAlignment.end,
           children: [
             TextButton(
               child: Text('Cancelar'),
               onPressed: (){

               },),
               TextButton(
               child: Text('Ok'),
               onPressed: (){

               },),
               
           ],
         )
       ]) ,
   );

  }

 Widget _cardTipo2(){
   final card = SizedBox(
     //clipBehavior: Clip.antiAlias,
     child: Column(
       children: [
         FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'), 
          image: NetworkImage(
              'https://i0.wp.com/hipertextual.com/wp-content/uploads/2017/03/color-degradado-fondos-degradados-multicolor-51200.jpg?fit=1920%2C1200&ssl=1',

           ),
           fadeInDuration: Duration(milliseconds: 200),
           height: 250.0,
           fit: BoxFit.cover,
          ),
        
         Container(
           padding: EdgeInsets.all(10.0),
           child: Text('Descripcion de la imagen'),

         ),
       ],
     ),
   );

   return Container(
     
     decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0),
     color:Colors.white,
     boxShadow: <BoxShadow>[
       BoxShadow(
         color: Colors.black26,
         blurRadius: 10.0,
         spreadRadius: 2.0,
         offset: Offset(2.0, 10.0)
       ),
     ]
    // color: Colors.red,
   ),
   child: ClipRRect(
     borderRadius: BorderRadius.circular(30.0),
     child: card),
   
   );
 }
}