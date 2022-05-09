import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({ Key? key }) : super(key: key); //ignore

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "はじめてのアプリ", //title property
      theme: ThemeData.dark(),
       home: HomeScreen(),
    );
  }
}
