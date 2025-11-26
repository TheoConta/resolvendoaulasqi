import 'package:flutter/material.dart';
import 'pages/form_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Formulário Flutter Incrível",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey
      ), 
      home: FormPage(),
    );
  }
}