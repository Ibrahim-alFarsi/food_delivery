import 'package:flutter/material.dart';
import 'package:food_delivery/src/data/food_data.dart';
import 'package:food_delivery/src/models/food_model.dart';
import 'package:food_delivery/src/pages/HomePage/bar_items.dart';
import 'package:food_delivery/src/pages/HomePage/bought_food.dart';
import 'package:food_delivery/src/pages/HomePage/food_category.dart';
import 'package:food_delivery/src/pages/HomePage/home_top_info.dart';
import 'package:food_delivery/src/pages/HomePage/search_field.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Food> _foods = foods;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(
          top: 50.0,
          left: 20.0,
          right: 20.0,
          bottom: 20.0,
        ),
        children: <Widget>[
          HomeTopInfo(),
          FoodCategory(),
          SizedBox(height: 20.0),
          SearchField(),
          SizedBox(height: 20.0),
          BarItems(),
          SizedBox(height: 20.0),
          Column(
            children: _foods.map(_buildFoodItems).toList(),
          ),
        ],
      ),
    );
  }
}

Widget _buildFoodItems(Food food) {
  return Container(
    margin: EdgeInsets.only(bottom: 25.0),
    child: BoughtFood(
      id: food.id,
      name: food.name,
      imagePath: food.imagePath,
      category: food.category,
      discount: food.discount,
      price: food.price,
      ratings: food.ratings,
    ),
  );
}
