import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF17414F);
const kAccentColor = Color(0xFF1E4C6D);
const kCardColor = Color(0xFFe0e0e0);

class ReusableField extends StatelessWidget {
  ReusableField({this.hint});

  String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        color: Colors.grey,
      ),
      decoration: InputDecoration(
        hintText: hint,
        fillColor: Colors.black,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.grey)),
        focusedBorder:
        OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}