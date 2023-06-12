import 'package:flutter/material.dart';

void main(){
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class HomeScreen extends StatelessWidget {
  final List<String> shoppingItems = [
    'Apples',
    'Bananas',
    'Milk',
    'Bread',
    'Eggs',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shopping List'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Cart is empty')),);
          },
              icon: Icon(Icons.shopping_cart))

        ],
      ),
      body: ListView.builder(
          itemCount: shoppingItems.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Icon(Icons.shopping_basket),
              title: Text(shoppingItems[index]),
            );
          })

    );
  }
}

