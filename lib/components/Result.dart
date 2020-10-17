import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  String result;
  String label;

  Result({this.result, this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
        children: [
          Text(
            this.result,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w600,
              color: Color(0xff0e918c),
            ),
          ),
          SizedBox(height: 20),
          Text(
            this.label,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xff0e918c),
            ),
          ),
        ],
      )),
    );
  }
}
