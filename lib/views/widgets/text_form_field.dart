import 'package:flutter/material.dart';

class TetxFormFieldWiget extends StatelessWidget {
  const TetxFormFieldWiget(
      {super.key, required this.hintText, required this.textInputType});
  final String hintText;
  final TextInputType textInputType;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.black,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
