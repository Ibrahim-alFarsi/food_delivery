import 'package:flutter/material.dart';

buildInputDecoration(String string, {IconButton iconButton}) {
  return InputDecoration(
    hintText: '$string',
    contentPadding: EdgeInsets.only(
      left: 10.0,
      top: 20.0,
      bottom: 10.0,
      right: 10.0,
    ),
    helperStyle: TextStyle(
      color: Colors.grey[200],
      fontSize: 20.0,
    ),
    suffixIcon: iconButton,
  );
}

bool toggleVisibility = true;
