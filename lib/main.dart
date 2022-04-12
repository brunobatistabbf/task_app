import 'dart:io';
import 'package:flutter/material.dart';
import 'package:task_app/cadastro_screen.dart';
import 'home_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.purple,
    ),
    //home: HomeScreen(),
    initialRoute: "/",
    routes: {
      "/": (context) => HomeScreen(),
      "/cadastro": (context) => CadastroScreen()
    },
  ));
}
