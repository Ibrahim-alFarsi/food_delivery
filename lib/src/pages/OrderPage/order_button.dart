import 'package:flutter/material.dart';

class OrderButton extends StatefulWidget {
  @override
  _OrderButtonState createState() => _OrderButtonState();
}

class _OrderButtonState extends State<OrderButton> {
  static int index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.0,
      width: 45.0,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2.0,
          color: Color(0xFFD3D3D3),
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.keyboard_arrow_up,
              color: Color(0xFFd3d3d3),
            ),
          ),
          Text(
            '$index',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.black,
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                index = index - 1;
              });
            },
            child: Icon(
              Icons.keyboard_arrow_down,
              color: Color(0xFFd3d3d3),
            ),
          ),
        ],
      ),
    );
  }
}
