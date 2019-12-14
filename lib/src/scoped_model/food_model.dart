import 'dart:convert';

import 'package:food_delivery/src/models/food_model.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:http/http.dart' as http;

class FoodModel extends Model {
  List<Food> _foods = [];

  List<Food> get foods {
    return List.from(_foods);
  }

  void addFood(Food food) {
    _foods.add(food);
  }

  void fetchFoods() {
    http
        .get('http://192.168.100.15/flutter_food_app/api/foods/getFoods.php')
        .then((http.Response response) {
      final List fetchedData = json.decode('${response.body}');
      final List<Food> fetchedFoodItems = [];
      fetchedData.forEach((data) {
        Food food = Food(
          id: data['id'],
          name: data['name'],
          category: data['category'],
          ratings: data['ratings'],
          discount: double.parse(data['discount']),
          price: double.parse(data['price']),
          imagePath: data['imagPath'],
        );
        fetchedFoodItems.add(food);
      });
      _foods = fetchedFoodItems;
      print(_foods);
    });
  }
}
