import 'package:flutter/material.dart';
import 'package:fooderlich/components/card1.dart';
import 'package:fooderlich/components/card2.dart';
import 'package:fooderlich/components/card3.dart';
import 'package:fooderlich/models/models.dart';
import 'package:fooderlich/screens/explore_screen.dart';
import 'package:fooderlich/screens/grocery_screen.dart';
import 'package:fooderlich/screens/recipes_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    ExploreScreen(),
    RecipeScreen(),
    const GroceryScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Fooderlich',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        body: pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor:
              Theme.of(context).textSelectionTheme.selectionColor,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.explore), label: 'Explore'),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Recipes'),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'To Buy'),
          ],
        ));
  }
}
