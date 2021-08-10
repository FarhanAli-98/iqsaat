import 'package:flutter/material.dart';

class CustomTexFormField extends StatelessWidget {
  final TextInputType keyboardType;
  final Widget prefixIcon, suffixIcon;
  final String hint;
  final bool isObscure;

  const CustomTexFormField(
      {Key key,
      this.keyboardType,
      this.isObscure = false,
      this.prefixIcon,
      this.suffixIcon,
      @required this.hint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: TextFormField(
        obscureText: isObscure,
        keyboardType: keyboardType,
        style: TextStyle(color: Colors.grey, fontSize: 13),
        decoration: InputDecoration(
          prefixIcon: prefixIcon != null ? prefixIcon : null,
          suffixIcon: suffixIcon != null ? suffixIcon : null,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey[200],
            ),
          ),
          fillColor: Colors.grey[50],
          filled: true,
          hintText: hint,
          hintStyle: TextStyle(
             fontFamily: "JannaLT",
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
