import 'package:flutter/material.dart';
import 'package:bulleted_list/bulleted_list.dart';
import '../models/recipe.dart';

class DetailsScreen extends StatelessWidget {
  // required parameter to display content to screen
  final Recipe recipe; 
  const DetailsScreen({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.name)
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Recipe image
            Center(
              child: Column(
                children: [
                  Text(recipe.name, style: TextStyle(fontSize: 30)),
                  Image.asset(recipe.imagePath, height: 250, width: double.infinity, fit: BoxFit.fitHeight)]
              )
            ),
            SizedBox(height: 30),

            Text('Ingredients: ', style: TextStyle(fontSize: 24)),
            BulletedList(
              listItems: recipe.ingredients,
              listOrder: ListOrder.ordered,
            ),
            SizedBox(height: 30),
            Text('Instructions: ', style: TextStyle(fontSize: 24)),
            Text(recipe.instructions, style: TextStyle(fontSize: 18))
          ],
        ),
      ),
    );
  }
}