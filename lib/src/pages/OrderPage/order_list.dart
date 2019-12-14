import 'package:flutter/material.dart';

class OrderList extends StatefulWidget {
  @override
  _OrderListState createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Super Grilled Chicken',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 14.0),
        Text(
          '3.0 \$',
          style: TextStyle(color: Colors.deepOrangeAccent),
        ),
        SizedBox(height: 9.0),
        Container(
          height: 25.0,
          width: 160.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Chikcken',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'X',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
