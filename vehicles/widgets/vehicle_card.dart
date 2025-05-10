import 'package:flutter/material.dart';

class VehicleCard extends StatelessWidget {
  final String make;
  final String model;
  final int year;
  final double price;
  final String imageUrl;
  final bool isFavorite;
  final VoidCallback onFavoriteToggle;

  VehicleCard({
    required this.make,
    required this.model,
    required this.year,
    required this.price,
    required this.imageUrl,
    required this.isFavorite,
    required this.onFavoriteToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(imageUrl),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$make $model',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  '$year',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                Text(
                  '\$$price',
                  style: TextStyle(fontSize: 16, color: Colors.green),
                ),
                IconButton(
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? Colors.red : Colors.grey,
                  ),
                  onPressed: onFavoriteToggle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
