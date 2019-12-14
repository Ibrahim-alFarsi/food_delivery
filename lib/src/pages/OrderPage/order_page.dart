import 'package:flutter/material.dart';
import 'package:food_delivery/src/pages/OrderPage/order_card.dart';
import 'package:food_delivery/src/pages/OrderPage/order_payment.dart';

class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        centerTitle: true,
        title: Text(
          'Your Food Cart',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Color(0xfffafafa),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          Column(
            children: <Widget>[
              OrderCard(),
              OrderCard(),
              OrderCard(),
              OrderCard(),
            ],
          ),
        ],
      ),
      bottomNavigationBar: OrderPayment(),
    );
  }
}
