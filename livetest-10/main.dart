import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News Feed Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NewsFeed(),
    );
  }
}

class NewsFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Feed'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return _buildPortraitView();
          } else {
            return _buildLandscapeView();
          }
        },
      ),
    );
  }

  Widget _buildPortraitView() {
    return ListView.builder(
      itemCount: 10, // Replace with the actual number of articles
      itemBuilder: (context, index) {
   
        String imageUrl = 'https://images.pexels.com/photos/16790135/pexels-photo-16790135/free-photo-of-fog-over-bare-trees-in-forest.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1';

        return Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 150,
              height: 150,
              child: Image.network(imageUrl),
            ),
          ),
        );
      },
    );
  }

  Widget _buildLandscapeView() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: 10, // Replace with the actual number of articles
      itemBuilder: (context, index) {
       
        String imageUrl = 'https://images.pexels.com/photos/16790135/pexels-photo-16790135/free-photo-of-fog-over-bare-trees-in-forest.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1';

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 150,
            height: 150,
            child: Image.network(imageUrl),
          ),
        );
      },
    );
  }
}


