import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key});
  Widget myNewsCard(int index) {
    return Card(
      child: Column(
        children: [
          Image.network(
            DataSources.myNews[index]['image'],
            height: 80,
          ),
          Text(
            DataSources.myNews[index]['headline'],
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Feed'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.landscape
              ? GridView.builder(
                  itemCount: DataSources.myNews.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) => myNewsCard(index),
                )
              : ListView.builder(
                  itemCount: DataSources.myNews.length,
                  itemBuilder: (context, index) => myNewsCard(index),
                );
        },
      ),
    );
  }
}

class DataSources {
  static List myNews = [
    {
      "headline": "Scientists Make Strides in Clean Energy",
      "image": "https://trickbd.com/wp-content/uploads/2022/08/03/Notice.jpeg",
      "content":
          "In a groundbreaking development, scientists have made significant strides in clean energy research, paving the way for a sustainable future."
    },
    {
      "headline": "Global Space Mission Discovers New Exoplanet",
      "image": "https://trickbd.com/wp-content/uploads/2022/08/03/Notice.jpeg",
      "content":
          "A global space mission has identified a new exoplanet in a distant galaxy, offering valuable insights into the mysteries of the universe."
    },
    {
      "headline": "Tech Company Launches Next-Gen Smartphone",
      "image": "https://trickbd.com/wp-content/uploads/2022/08/03/Notice.jpeg",
      "content":
          "Tech enthusiasts rejoice as a leading company launches a cutting-edge smartphone, boasting revolutionary features and enhanced performance."
    }
  ];
}
