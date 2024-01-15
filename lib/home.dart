import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List myNews = [
    {
      "headline":
          "NASA's Perseverance Rover Discovers Ancient Riverbed on Mars",
      "image": "images/nasa.jpg",
      "content":
          "The Perseverance rover has made a remarkable discovery, finding evidence of an ancient riverbed on the surface of Mars, shedding light on the planet's watery past."
    },
    {
      "headline":
          "Breakthrough in Cancer Treatment: Immunotherapy Shows Promising Results",
      "image": "images/Breakthrough.jpg",
      "content":
          "Researchers have achieved a major breakthrough in cancer treatment using immunotherapy, with early trials showing promising results in effectively targeting and eliminating cancer cells."
    },
    {
      "headline":
          "AI Advancements: DeepMind's Latest Model Surpasses Human-level Performance in Chess",
      "image": "images/AI Advancements.jpg",
      "content":
          "DeepMind, a leading AI research lab, has achieved a significant milestone as their latest model surpasses human-level performance in chess, marking a leap forward in artificial intelligence capabilities."
    },
    {
      "headline":
          "Global Efforts to Combat Climate Change: COP26 Summit Concludes with Ambitious Agreements",
      "image": "images/Global Efforts.jpg",
      "content":
          "The COP26 climate summit concluded with nations around the world reaching ambitious agreements to address climate change, emphasizing the urgency of collective action to protect the planet."
    },
    {
      "headline":
          "Medical Breakthrough: New Drug Shows Promise in Alzheimer's Disease Treatment",
      "image": "images/Medical.jpg",
      "content":
          "A newly developed drug has shown promise in the treatment of Alzheimer's disease, offering hope to millions affected by this debilitating condition. Clinical trials indicate significant improvement in cognitive function."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News feed'),
      ),
      body: ListView.builder(
        itemCount: myNews.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: ListTile(
              title: Text(myNews[index]['headline'], maxLines: 1),
              leading: Image(
                image: AssetImage(myNews[index]['image']),
                height: 150,
                width: 150,
                fit: BoxFit.cover,
              ),
              subtitle: Text(myNews[index]['content'], maxLines: 2),
            ),
          );
        },
      ),
    );
  }
}
