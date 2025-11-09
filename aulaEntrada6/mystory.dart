import 'package:flutter/material.dart';

class MyStory extends StatefulWidget {
  final String? title = "Perfil";
  
  const MyStory({super.key, required title});

  @override
  State<MyStory> createState() => _MyStoryState();
}

class _MyStoryState extends State<MyStory> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CircleAvatar(
          radius: 40,
          backgroundColor: Colors.blueAccent,
          child: FlutterLogo(size: 60),
        ),
        Text(title!)
      ],
    );
  }
}
