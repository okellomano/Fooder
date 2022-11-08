import 'package:flutter/material.dart';
import 'package:fooderlich/api/mock_fooderlich_service.dart';
import 'package:fooderlich/components/components.dart';

class ExploreScreen extends StatelessWidget {
  final mockService = MockFooderlichService();

  ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO 1: Add today recipe list
    return FutureBuilder(
      future: mockService.getExploreData(),
      builder: (context, AsyncSnapshot snapshot) {
        // TODO: Add nested list view
        if (snapshot.connectionState == ConnectionState.done) {
          return ListView(
            scrollDirection: Axis.vertical,
            children: [
              TodayRecipeListView(recipes: snapshot.data.todayRecipes),
              const SizedBox(
                height: 16,
              ),

              // TODO: Replace this with FriendPostListView

              FriendPostListView(friendPosts: snapshot.data.friendPosts)
            ],
          );
          final recipes = snapshot.data.todayRecipes;
          // TODO: Replace this with today recipelist view
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
