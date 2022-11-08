import 'package:flutter/material.dart';
import 'package:fooderlich/screens/empty_grocery_screen.dart';
import 'package:provider/provider.dart';
import 'package:fooderlich/models/models.dart';
import 'package:fooderlich/screens/grocery_item_screen.dart';

class GroceryScreen extends StatelessWidget {
  const GroceryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildGroceryScreen() {
      return Consumer<GroceryManager>(
        builder: (context, manager, child) {
          if (manager.groceryItems.isNotEmpty) {
            //add gorcery list
            return Container();
          } else {
            return const EmptyGroceryScreen();
          }
        },
      );
    }

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          //present grocery screen
          final manager = Provider.of<GroceryManager>(context, listen: false);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => GroceryItemScreen(
                onCreate: (item) {
                  manager.addItem(item);
                  Navigator.pop(context);
                },
                onUpdate: (item) {},
              ),
            ),
          );
        },
      ),
      body: buildGroceryScreen(),
    );
  }
}
