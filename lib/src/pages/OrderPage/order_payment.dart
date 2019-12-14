import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/src/pages/ProfilePage/sign_in_page.dart';

class OrderPayment extends StatefulWidget {
  @override
  _OrderPaymentState createState() => _OrderPaymentState();
}

class _OrderPaymentState extends State<OrderPayment> {
  TextStyle textStyle = TextStyle(
    color: Colors.grey[600],
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      height: 210.0,
      child: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Cart Total', style: textStyle),
                  Text('23.0', style: textStyle),
                ],
              ),
            ],
          ),
          SizedBox(height: 5.0),
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Discount', style: textStyle),
                  Text('3.0', style: textStyle),
                ],
              ),
            ],
          ),
          SizedBox(height: 5.0),
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Tax', style: textStyle),
                  Text('0.50', style: textStyle),
                ],
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Divider(color: Colors.grey[350]),
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('SubTotal', style: textStyle),
                  Text('26.50', style: textStyle),
                ],
              ),
            ],
          ),
          SizedBox(height: 20.0),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => SignInPage(),
                ),
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width / 1.8,
              height: 40,
              padding: EdgeInsets.only(),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Color(0xFF3D88FF),
              ),
              child: Center(
                child: Text(
                  'Proceed To Checkout',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
