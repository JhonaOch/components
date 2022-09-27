// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class InputPage extends StatefulWidget {


  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre='';
  String _email ='';
  String _fecha='';
  String _opcionselecionado='Volar';

  // ignore: prefer_final_fields
  TextEditingController _edit= TextEditingController();

  // ignore: prefer_final_fields
  List<String> _poderes = ['Volar','Rayos','Aliento','Fuerza'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inpust de textos'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal:10.0,vertical:20.0),
         children: [
           _crearInput(),
           Divider(), 
           _crearEmail(),
            Divider(),
            _crearPassword(),
            Divider(),
            _crearFecha(context),
             Divider(),
             _crearDropdown(),
             Divider(),
           _crearPersona(),
          
         ],
      ),
      
    );
  }


  Widget _crearInput() {

    return TextField(
        //autofocus: true,
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0)
          ),
          counter: Text('Letra ${_nombre.length}'), 
          hintText: 'Nombre de la persona',
          labelText: 'Nombre',
          helperText: 'Solo es el nombre',
          suffixIcon: Icon(Icons.access_alarm_outlined),
          icon: Icon(Icons.account_balance)


        ),

        onChanged: (valor){
          setState(() {
              _nombre = valor;
          });
          
        },
    );
  }

  Widget _crearPersona(){
     return ListTile(

       title: Text('El nombre es $_nombre'),
       subtitle: Text('El email es $_email'),
       trailing: Text('la fuerza es $_opcionselecionado'),
       

     );
  }

  Widget _crearEmail(){

     return TextField(
        //autofocus: true,
        // textCapitalization: TextCapitalization.sentences,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0)
          ),
          // counter: Text('Letra ${_nombre.length}'), 
          hintText: 'Email',
          labelText: 'Email',
          // helperText: 'Solo es el nombre',
          suffixIcon: Icon(Icons.alternate_email),
          icon: Icon(Icons.email)


        ),

        onChanged: (valor){
          setState(() {
              _email = valor;
          });
          
        },
    );

  }

   Widget _crearPassword(){

      return TextField(
        //autofocus: true,
        // textCapitalization: TextCapitalization.sentences,
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0)
          ),
          // counter: Text('Letra ${_nombre.length}'), 
          hintText: 'Contrasena',
          labelText: 'Contrasena',
          // helperText: 'Solo es el nombre',
          suffixIcon: Icon(Icons.lock_open),
          icon: Icon(Icons.lock)


        ),

        onChanged: (valor){
          setState(() {
          });
          
        },
    );
   }

   Widget _crearFecha( context){
      return TextField(
       enableInteractiveSelection: false,
       controller: _edit ,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0)
          ),
          // counter: Text('Letra ${_nombre.length}'), 
          hintText: 'Fecha de nacimiento',
          labelText: 'Fecha de nacimiento',
          // helperText: 'Solo es el nombre',
          suffixIcon: Icon(Icons.perm_contact_calendar),
          icon: Icon(Icons.calendar_today)


        ),

        onTap: (){
          FocusScope.of(context).requestFocus(FocusNode());
          _selectDate(context);
        },

       
    );
   }

   _selectDate(context)async {
     DateTime? picked= await showDatePicker(
      context: context, 
      // ignore: unnecessary_new
      initialDate: new DateTime.now(),
      // ignore: unnecessary_new
      firstDate: new DateTime(2022), 
      // ignore: unnecessary_new
      lastDate: new DateTime(2025),
      locale: Locale('es','ES'),
      );


      if(picked != null) {
        setState(() {
          _fecha=picked.toString();
          _edit.text=_fecha;
        });
      }
   }

List<DropdownMenuItem<String>> getOpciones(){
  // ignore: deprecated_member_use
  List<DropdownMenuItem<String>> lista = [];

  // ignore: avoid_function_literals_in_foreach_calls
  _poderes.forEach((element) {
    lista.add( DropdownMenuItem(
      child:Text(element) ,
      value:element));
  });


  return lista;
}

  Widget _crearDropdown(){
    return DropdownButton(
      value: _opcionselecionado,
      items: getOpciones(),
      onChanged: (opt){
        setState(() {
          _opcionselecionado=opt.toString();
        });

      },

    );
  }

}