// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child:ElevatedButton(
          child:Text('Alert Page'),
        
        onPressed:()=>_mostrarAlert(context),
        style:ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          shape: StadiumBorder()
        )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.keyboard_return_outlined),
        onPressed: (){
          Navigator.pop(context);
        },
      ),


    );
  }

  void _mostrarAlert(context){
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('Titulo'),
          content: Column(
            mainAxisSize:MainAxisSize.min,
            children:const [
              Text('Este es el contenido de la alerta'),
              FlutterLogo(size:100.0)
            ]
          ),
          actions: [
            TextButton(onPressed: (){
              Navigator.of(context).pop();
            }, child: Text("Cancelar")),
             TextButton(onPressed:()=> Navigator.of(context).pop(), child: Text("Ok"))
          ],
        );
      }
    
      );
  //  return Container();
  }
}