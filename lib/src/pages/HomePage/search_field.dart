import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              horizontal: 32.0,
              vertical: 14.0,
            ),
            hintText: 'Search Any Food',
            suffixIcon: Material(
              borderRadius: BorderRadius.circular(50.0),
              elevation: 5.0,
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
            border: InputBorder.none,
          ),
        ),
      );
  }
}
