import 'package:flutter/material.dart';

class MyRadio extends StatefulWidget {
  final ValueChanged<String?> value;
  

  const MyRadio({super.key, required this.value});

  @override
  State<MyRadio> createState() => _MyRadioState();
}

class _MyRadioState extends State<MyRadio> {
  String _value = "machao";
  
  @override
  Widget build(BuildContext context) {
   return RadioGroup(
    groupValue: _value,
    onChanged: (v){
      setState(() {
        _value = v.toString();
        widget.value(v.toString());
      });
    },
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Expanded(
          child: RadioListTile(
            value: "Machao",
            title: Text("Machão"),
            controlAffinity: ListTileControlAffinity.leading,
            ),
          ),
          
          Expanded(
          child: RadioListTile(
            value: "Femininao",
            title: Text("Femininão"),
            controlAffinity: ListTileControlAffinity.leading,
            ),
          )
      ],
    )
    );
  }
}