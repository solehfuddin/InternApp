import 'package:flutter/material.dart';

class WidgetTextInput extends StatefulWidget {
  @override
  _WidgetTextInputState createState() => _WidgetTextInputState();
}

class _WidgetTextInputState extends State<WidgetTextInput> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        filled: true,
        hintStyle: TextStyle(color: Colors.grey),
        hintText: "Abdul Hamid",
        fillColor: Colors.white,
      ),
    );
  }
}
