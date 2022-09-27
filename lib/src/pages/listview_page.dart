import 'dart:async';

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class ListPage extends StatefulWidget {
  

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  // ignore: prefer_final_fields
  ScrollController _scrollController = ScrollController();

  // ignore: prefer_final_fields
  List<int> _numeros = [];
  int _ultimoItem=0;
  bool _isloading=false;

  @override
  void initState() {
   
    super.initState();



    _agregar10();

    _scrollController.addListener(() {
      if(_scrollController.position.pixels==_scrollController.position.maxScrollExtent){
        // _agregar10();
        _traerInf();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listas'),
      ),
      body:Stack(children:[
         _crearLista(),
         _crearLoading(),
         ]),
      
    );
  }

  Widget _crearLista(){
    return RefreshIndicator(
      onRefresh:obtenerPagina1,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: _numeros.length,
        itemBuilder:(context,int index){
    
          final image= _numeros[index];
    
          return FadeInImage(
            placeholder:const AssetImage('assets/jar-loading.gif') , 
            image: NetworkImage('https://picsum.photos/500/300/?image=$image'));
    
        },
        
         ),
    );
  }

  Future<void>obtenerPagina1() async {
    const duration= Duration(seconds: 2);
     Timer(duration,(){
      _numeros.clear();
      _ultimoItem++;
      _agregar10();

    });

    return Future.delayed(duration);
  }

  void _agregar10(){
    for (var i=1; i< 10;i++){
      _ultimoItem++;
      _numeros.add(_ultimoItem);

    }

    setState(() {
      
    });

  }

  Future<void> _traerInf() async{

    _isloading=true;
    setState(() {
      const duration= Duration(seconds: 2);
      Timer(duration,respuestaHTTP);
    });

  }
  void respuestaHTTP(){
    _isloading=false;

    _scrollController.animateTo(
      _scrollController.position.pixels+100,
      curve: Curves.fastOutSlowIn,
      duration: const Duration(seconds: 2),
    );

    _agregar10();
  }

  Widget _crearLoading(){
    if(_isloading){
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircularProgressIndicator(),

            ]
          ),
          const SizedBox(height:15.0)

        ],
      );
      
    }else{
      return Container();
    }
  }
}