import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  String label;
  Function onChange;

  Input({this.label, this.onChange});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      style: TextStyle(
        color: Theme.of(context).primaryColor,
        fontWeight: FontWeight.w600,
        fontSize: 24,
      ),
      textAlign: TextAlign.center,
      onChanged: onChange,
      decoration: InputDecoration(
        hintText: this.label,
        labelStyle: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: Theme.of(context).primaryColor,
        ),
        border: InputBorder.none,
      ),
    );
  }
}
