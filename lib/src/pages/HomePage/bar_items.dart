import 'package:flutter/material.dart';

class BarItems extends StatefulWidget {
  @override
  _BarItemsState createState() => _BarItemsState();
}

class _BarItemsState extends State<BarItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        right: 10.0,
        left: 10.0,
        bottom: 10.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Frequently Bought Foods',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          GestureDetector(
            onTap: () {

            },
            child: Text(
              'View All',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.orangeAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
