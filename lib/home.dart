import 'package:flutter/material.dart';
import 'package:fooderlich/components/card1.dart';
import 'package:fooderlich/components/card2.dart';
import 'package:fooderlich/components/card3.dart';
import 'package:fooderlich/models/models.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    Card1(
      recipe: ExploreRecipe(
          authorName: 'Ray Wonderworld',
          title: 'The Art of Dough',
          subtitle: 'Editor\'s Choice',
          message: 'Learn to make the perfect bread',
          backgroundImage: 'assets/magazine_pics/mag1.png',
          cardType: '',
          id: ''),
    ),
    Card2(
      recipe: ExploreRecipe(
          authorName: 'Mike Katz',
          role: 'Smoothie Connoisser',
          profileImage: 'assets/profile_pics/person_katz.jpeg',
          title: 'Recipe',
          subtitle: 'Smmoothies',
          backgroundImage: 'assets/magazine_pics/mag2.png',
          cardType: '',
          id: ''),
    ),
    Card3(
      recipe: ExploreRecipe(
          title: 'Vegan Trends',
          tags: [
            'Healthy',
            'Vegan',
            'Carrots',
            'Greens',
            'Wheat',
            'Pescetarian',
            'Mint',
            'Lemongrass',
            'Salad',
            'Water'
          ],
          backgroundImage: 'assets/magazine_pics/mag3.png',
          cardType: '',
          id: ''),
    ),
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
