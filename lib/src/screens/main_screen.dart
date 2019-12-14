import 'package:flutter/material.dart';
import 'package:food_delivery/src/pages/FavoritePage/favorite_page.dart';
import 'package:food_delivery/src/pages/HomePage/home_page.dart';
import 'package:food_delivery/src/pages/OrderPage/order_page.dart';
import 'package:food_delivery/src/pages/ProfilePage/profile.dart';
import 'package:food_delivery/src/scoped_model/food_model.dart';

class MainScreen extends StatefulWidget {
  final FoodModel foodModel;

  MainScreen({this.foodModel});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTapIndex = 0;
  List<Widget> pages;
  Widget currentPage;
  HomePage homePage;
  Profile profile;
  Favorite favorite;
  Order order;

  @override
  void initState() {
    widget.foodModel.fetchFoods();
    homePage = HomePage();
    profile = Profile();
    favorite = Favorite();
    order = Order();
    super.initState();
    pages = [
      homePage,
      order,
      favorite,
      profile,
    ];
    currentPage = homePage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            currentTapIndex = index;
            currentPage = pages[index];
          });
        },
        currentIndex: currentTapIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('Orders'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Favorite'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
        ],
      ),
      body: currentPage,
    );
  }
}
