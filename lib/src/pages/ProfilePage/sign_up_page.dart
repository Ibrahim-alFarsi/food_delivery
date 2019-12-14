import 'package:flutter/material.dart';
import 'package:food_delivery/src/widgets/share_widgets.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height / 6,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'SIGN UP',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 50.0),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                ),
                child: Card(
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: buildInputDecoration('User Name'),
                      ),
                      TextFormField(
                        decoration: buildInputDecoration('Email'),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      TextFormField(
                        decoration: buildInputDecoration('Password',
                            iconButton: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.visibility),
                            )),
                        obscureText: true,
                      ),
                      TextFormField(
                        decoration: buildInputDecoration('Confirm Password'),
                        obscureText: true,
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(top: 80.0),
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 3.5,
                    right: MediaQuery.of(context).size.width / 3.5,
                    top: 10.0,
                    bottom: 10.0,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue,
                      width: 1.0,
                    ),
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
