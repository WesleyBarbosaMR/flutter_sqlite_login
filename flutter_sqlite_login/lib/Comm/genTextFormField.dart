// * Import Libraries
// * Flutter Libraries
import 'package:flutter/material.dart';
import 'package:flutter_sqlite_login/Comm/comHelper.dart';

class getTextFormField extends StatelessWidget {
  late TextEditingController controller;
  late String hintName;
  late IconData icon;
  late bool isObscureText;
  late TextInputType inputType;

  getTextFormField({
    required this.controller,
    required this.hintName,
    required this.icon,
    this.isObscureText = false,
    this.inputType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: TextFormField(
        controller: controller,
        obscureText: isObscureText,
        keyboardType: inputType,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Insira o(a) $hintName';
          }

          if (hintName == 'Email' && !validateEmail(value)) {
            return 'Formato de email inválido!';
          }

          return null;
        },
        onSaved: (val) => controller.text = val!,
        decoration: InputDecoration(
          labelText: hintName,
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
