/*
runApp() = helps to run the application
Text() = helps to display text on the screen

In terms of UI related stuff we have :
  1. StatelessWidget
  2. StatefulWidget

State is the data/information that can
change while your app is running,
causing the UI to update—
for example, a counter changing from 0 → 1.


Two types of designs :
1. Material Design  (Google)
2. Cupertino Design (Made by apple)
 */

// import 'package:currency_converter/cc_material.dart';
import 'package:currency_converter/cc_material.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp()); // this will run our app
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  /*
   Widget → the return type; it says this function will return a Flutter widget (like Text, Container, Column).
build → a method that Flutter calls whenever it needs to create/rebuild your UI.
BuildContext → a special object that tells Flutter where this widget is located in the widget tree.
context → the variable holding that BuildContext object; you use it to access information about the widget's location, theme, screen size, navigation, etc.

  * Scaffold is a Flutter widget that provides
   the basic screen structure of an app,
   such as AppBar, body, FloatingActionButton,
    Drawer, and BottomNavigationBar.*/

  Widget build(BuildContext context){
    return const MaterialApp(
        debugShowCheckedModeBanner : false,
        home: CurrencyConvertorPage(),
    );
  }
}
