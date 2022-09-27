// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
 

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorS= 500;
  bool _bloquerCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders'),
      ),
      body:Container(
        padding: const EdgeInsets.only(top:50),
        child: Column(
          children: [
            _crearSlider(),
            _crearCheckBox(),
            _crearSwitch(),
            Expanded(child: _crearImagen()),
          ],
        ),
      )
       
      
    );
  }

  Widget _crearSlider(){
    return Slider(
      activeColor: Colors.indigoAccent,
      label:'Tamano de la image',
      //divisions: 20,
      max: 500,
      min: 10,
      value: _valorS,
       onChanged: (_bloquerCheck)?null:(valor){
       
         setState(() {
             _valorS=valor;
         });
       });
  }

  Widget _crearImagen(){

    return Image(image: const NetworkImage('https://cloudfront-us-east-1.images.arcpublishing.com/eluniverso/5IBZWSIEZ5HDTIEKO3SZWQUUKA.jpg'
    ),
    width: _valorS,
    fit:BoxFit.contain ,
    );
  }
 
  Widget _crearCheckBox(){
    return CheckboxListTile(
      title: const Text('Bloquear Slider'),
      value:_bloquerCheck,
      onChanged: (valor){
        setState(() {
          _bloquerCheck=valor!;
        });
       
      }
    );

  }

  Widget _crearSwitch(){
    return SwitchListTile(
      // ignore: prefer_const_constructors
      title: Text('Bloquear Switch'),
      value:_bloquerCheck,
      onChanged: (valor){
        setState(() {
          _bloquerCheck=valor;
        });
       
      }
    );

  }
}