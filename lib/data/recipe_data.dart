// Create list of recipes by following the format specified in recipe.dart file
import '../models/recipe.dart';

final List<Recipe> sampleRecipes = [
  Recipe(
    name: 'Nachos',
    imagePath: 'assets/nachos.jpg',
    ingredients: ['Ground beef', 'Tortilla chips', 'Cheese', 'Pico de gallio'],
    instructions: 'Season ground beef to your liking and cook. Place chips on a plate and layer with cooked ground been, cheese, pico de gallio, and other desired toppings.',
  ),
  Recipe( // EDIT
    name: 'Burger',
    imagePath: 'assets/burger.jpeg',
    ingredients: ['Ground Beef', 'Burger buns', 'Onion'],
    instructions: 
    'Season ground beef to your liking and add diced onion. Form small, round disks to form patties and cook in greased pan or oven. Add prefered toppings.',
  ),
  Recipe( // EDIT
    name: 'Strawberry Smoothie',
    imagePath: 'assets/smoothie.jpg',
    ingredients: ['Strawberries', 'Pineapples', 'Almond milk', 'Ice cubes', 'Honey'],
    instructions: 'Add strawberries, pineapples, almond milk, and ice cubes to blender. Add drizzle of honey. Blend, serve, and enjoy.'
  ),
  Recipe( // EDIT
    name: 'Lasagna',
    imagePath: 'assets/lasagna.jpg',
    ingredients: ['Lasagna noodles', 'Ground beef', 'Tomato sauce', 'Onion', 'Garlic', 'Cheese'],
    instructions: 'Cook pasta. Brown beef with onion & garlic. Add sauce. Layer pasta with ground beef and cheese. Cook in oven until cheese has formed a crust.',
  ),
  Recipe( // EDIT
    name: 'Chicken Ravioli',
    imagePath: 'assets/ravioli.jpeg',
    ingredients: ['Chicken', 'Ravioli', 'Pasta sauce'],
    instructions: 'Cook pasta. CLEAN chicken and season to your liking. Cook chicken COMPLETELY, then cut into slices. Add desired sauce to pasta and layer with chicken.',
  )
];