import 'dart:convert';
import 'package:flutter/material.dart';
import 'recipe_model.dart';

const String recipesJson = '''
{
  "recipes": [
     {

      "title": "Pasta Carbonara",

      "description": "Creamy pasta dish with bacon and cheese.",

      "ingredients": ["spaghetti", "bacon", "egg", "cheese"]

    },

    {

      "title": "Caprese Salad",

      "description": "Simple and refreshing salad with tomatoes, mozzarella, and basil.",

      "ingredients": ["tomatoes", "mozzarella", "basil"]

    },

    {

      "title": "Banana Smoothie",

      "description": "Healthy and creamy smoothie with bananas and milk.",

      "ingredients": ["bananas", "milk"]

    },

    {

      "title": "Chicken Stir-Fry",

      "description": "Quick and flavorful stir-fried chicken with vegetables.",

      "ingredients": ["chicken breast", "broccoli", "carrot", "soy sauce"]

    },

    {

      "title": "Grilled Salmon",

      "description": "Delicious grilled salmon with lemon and herbs.",

      "ingredients": ["salmon fillet", "lemon", "olive oil", "dill"]

    },

    {

      "title": "Vegetable Curry",

      "description": "Spicy and aromatic vegetable curry.",

      "ingredients": ["mixed vegetables", "coconut milk", "curry powder"]

    },

    {

      "title": "Berry Parfait",

      "description": "Layered dessert with fresh berries and yogurt.",

      "ingredients": ["berries", "yogurt", "granola"]

    }
  ]
}
''';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RecipeListView(),
    );
  }
}

class RecipeListView extends StatefulWidget {
  @override
  _RecipeListViewState createState() => _RecipeListViewState();
}

class _RecipeListViewState extends State<RecipeListView> {
  late List<Recipe> _recipeList;

  @override
  void initState() {
    super.initState();
    _recipeList = parseRecipes(recipesJson);
  }

  List<Recipe> parseRecipes(String json) {
    final parsedJson = jsonDecode(json);
    final jsonList = parsedJson['recipes'];
    return jsonList.map<Recipe>((json) => Recipe.fromJson(json)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Recipes'),
      ),
      body: ListView.builder(
        itemCount: _recipeList.length,
        itemBuilder: (context, index) {
          final recipe = _recipeList[index];
          return ListTile(
            leading: Icon(Icons.business_rounded),
            title: Text(recipe.title),
            subtitle: Text(recipe.description),
          );
        },
      ),
    );
  }
}
