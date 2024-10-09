import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
        name: 'Sugar',
        price: 5000,
        image: 'images/sugar.png',
        stock: 10,
        rating: 4.5),
    Item(
        name: 'Salt',
        price: 2000,
        image: 'images/salt.png',
        stock: 20,
        rating: 4.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/item', arguments: item);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Hero(
                              tag: item.image,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    8), // Half of the width/height for a perfect circle
                                child: Image.asset(
                                  item.image,
                                  fit: BoxFit
                                      .cover, // Adjust width and height as needed
                                  height: 100,
                                  width: double.infinity,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(item.name,
                                    style: const TextStyle(fontSize: 16)),
                                Text("Rp${item.price.toString()}"),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow[600],
                                    ),
                                    Text(item.rating.toString())
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.grey[300],
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('© 2024 Achmad Raihan Fahrezi Effendy - 2241720192',
                    style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
