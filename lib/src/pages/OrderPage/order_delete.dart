import 'package:flutter/material.dart';

class OrderDelete extends StatefulWidget {
  @override
  _OrderDeleteState createState() => _OrderDeleteState();
}

class _OrderDeleteState extends State<OrderDelete> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 1.0),
      child: GestureDetector(
        onTap: () {},
        child: Image(
          image: AssetImage('assets/images/error.png'),
          height: 18.0,
          color: Colors.grey,
        ),
      ),
    );
  }
}
