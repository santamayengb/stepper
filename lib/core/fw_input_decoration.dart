import 'package:flutter/material.dart';

InputDecoration fwInputDecoration(String title) {
  return InputDecoration(
    label: Text(title),
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: Color.fromARGB(0, 0, 0, 0),
        width: 2,
      ),
    ),
    filled: true,
    fillColor: Colors.grey[300],
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0x00000000),
        width: 1,
      ),
    ),
  );
}
