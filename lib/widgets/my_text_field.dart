import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextInputType textInputType;
  final String hint;
  final bool isPassword;
  final ValueChanged<String> onChange;

  const MyTextField({this.textInputType, this.hint, this.isPassword, this.onChange});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: this.isPassword?? false,
      decoration: InputDecoration(
        hintText: hint,
        fillColor: Color(0xFFF8F9F8),
        filled: true,
        contentPadding: EdgeInsets.all(10),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFD1D0D1),
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFD1D0D1),
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFD1D0D1),
            width: 1,
          ),
        ),
      ),
      keyboardType: textInputType,
      onChanged: onChange,
    );
  }
}
