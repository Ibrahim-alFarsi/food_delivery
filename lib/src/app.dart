import 'package:flutter/material.dart';
import 'package:food_delivery/src/scoped_model/food_model.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:food_delivery/src/screens/main_screen.dart';

final FoodModel foodModel = FoodModel();

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<FoodModel>(
      model: foodModel,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Food Delivery App',
        theme: ThemeData(
          primaryColor: Colors.blueAccent,
        ),
        home: MainScreen(foodModel: foodModel),
      ),
    );
  }
}
