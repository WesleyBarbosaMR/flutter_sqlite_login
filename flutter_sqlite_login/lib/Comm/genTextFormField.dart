// * Import Libraries
// * Flutter Libraries
import 'package:flutter/material.dart';

class getTextFormField extends StatelessWidget {
  late TextEditingController controller;
  late String hintName;
  late IconData icon;
  late bool isObscureText;

  getTextFormField(
      {required this.controller,
      required this.hintName,
      required this.icon,
      this.isObscureText = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: TextFormField(
        controller: controller,
        obscureText: isObscureText,
        decoration: InputDecoration(
          hintText: hintName,

          // * Input Decoration
          // * Field Icons
          prefixIcon: Icon(icon),
          // * BG Decoration
          fillColor: Colors.grey[300],
          filled: true,
          // * Border Decoration
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            ),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            ),
            borderSide: BorderSide(color: Colors.lightGreen),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            ),
            borderSide: BorderSide(color: Colors.redAccent),
          ),
        ),
      ),
    );
  }
}
