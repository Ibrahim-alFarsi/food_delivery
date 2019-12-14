import 'package:flutter/material.dart';

class OrderImageDecaration extends StatefulWidget {
  @override
  _OrderImageDecarationState createState() => _OrderImageDecarationState();
}

class _OrderImageDecarationState extends State<OrderImageDecaration> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.0,
      width: 75.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/lunch.jpeg'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(50.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 5.0,
            offset: Offset(1.0, 3.0),
          ),
        ],
      ),
    );
  }
}
