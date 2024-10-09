import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        title: Text(itemArgs.name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              children: [
                Hero(
                    tag: itemArgs.image,
                    child: Image.asset(itemArgs.image,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 300)),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(itemArgs.name,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold)),
                      Row(
                        children: [
                          Text('Stock: ${itemArgs.stock}'),
                          Text(" | "),
                          Icon(
                            Icons.star,
                            color: Colors.yellow[600],
                          ),
                          Text("${itemArgs.rating}"),
                        ],
                      ),
                      Text('Rp${itemArgs.price}'),
                    ],
                  ),
                ),
              ],
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
