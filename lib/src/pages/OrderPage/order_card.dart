import 'package:flutter/material.dart';
import 'package:food_delivery/src/pages/OrderPage/order_button.dart';
import 'package:food_delivery/src/pages/OrderPage/order_delete.dart';
import 'package:food_delivery/src/pages/OrderPage/order_image_decoration.dart';
import 'package:food_delivery/src/pages/OrderPage/order_list.dart';

class OrderCard extends StatefulWidget {
  @override
  _OrderCardState createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Padding(
        padding: EdgeInsets.only(
          top: 18.0,
          bottom: 9.0,
          left: 15.0,
          right: 15.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            OrderButton(),
            SizedBox(width: 20.0),
            OrderImageDecaration(),
            SizedBox(width: 20.0),
            OrderList(),
            SizedBox(width: 10.0),
            OrderDelete(),
          ],
        ),
      ),
    );
  }
}
