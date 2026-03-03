import 'package:flutter/material.dart';
import '../data/recipe_data.dart';
import '../screens/details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Page',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.green),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe Book'),
      ) ,
      body: 
        ListView.builder(
          itemCount: sampleRecipes.length,
          
          // creates new list item, gets info from sampleRecipes (context)
          itemBuilder: (context, index) {
            final recipe = sampleRecipes[index];

            // display current recipe info using the card widget
            return Card(
              child: ListTile(
                leading: Image.asset(recipe.imagePath, width: 56, fit: BoxFit.cover),
                title:   Text(recipe.name),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute( builder: (_) => DetailsScreen(recipe: recipe), ),
                  );
                },
              ),
            );
          },
        )
    );
  }
}

