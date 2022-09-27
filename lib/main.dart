import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/routes/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
//import 'package:flutter_application_2/src/pages/home_page.dart';
// import 'package:flutter_application_2/src/home_temp.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      // ignore: prefer_const_literals_to_create_immutables
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
         GlobalWidgetsLocalizations.delegate,

      ],

      // ignore: prefer_const_literals_to_create_immutables
      supportedLocales: [
        const Locale('en','US'),
        const Locale('es','ES'),
         //
      ],


      //home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),
    );
  }
}


