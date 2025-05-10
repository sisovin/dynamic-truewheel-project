import 'package:flutter/material.dart';

class VehicleDetail extends StatelessWidget {
  final String make;
  final String model;
  final int year;
  final double price;
  final String description;
  final List<String> imageUrls;
  final Map<String, String> specs;

  VehicleDetail({
    required this.make,
    required this.model,
    required this.year,
    required this.price,
    required this.description,
    required this.imageUrls,
    required this.specs,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$make $model'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildImageGallery(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$make $model',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '$year',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  Text(
                    '\$$price',
                    style: TextStyle(fontSize: 20, color: Colors.green),
                  ),
                  SizedBox(height: 16),
                  Text(
                    description,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  _buildSpecsTable(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageGallery() {
    return Container(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(imageUrls[index]),
          );
        },
      ),
    );
  }

  Widget _buildSpecsTable() {
    return Table(
      border: TableBorder.all(),
      children: specs.entries.map((entry) {
        return TableRow(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                entry.key,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(entry.value),
            ),
          ],
        );
      }).toList(),
    );
  }
}
