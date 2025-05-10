import 'package:flutter/material.dart';

class FeaturedVehicles extends StatelessWidget {
  final List<Vehicle> vehicles;

  FeaturedVehicles({required this.vehicles});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: vehicles.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return VehicleQuickView(vehicle: vehicles[index]);
                },
              );
            },
            child: VehicleCard(vehicle: vehicles[index]),
          );
        },
      ),
    );
  }
}

class Vehicle {
  final String make;
  final String model;
  final int year;
  final double price;
  final String imageUrl;

  Vehicle({
    required this.make,
    required this.model,
    required this.year,
    required this.price,
    required this.imageUrl,
  });
}

class VehicleCard extends StatelessWidget {
  final Vehicle vehicle;

  VehicleCard({required this.vehicle});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(vehicle.imageUrl),
          Text('${vehicle.make} ${vehicle.model}'),
          Text('\$${vehicle.price.toStringAsFixed(2)}'),
        ],
      ),
    );
  }
}

class VehicleQuickView extends StatelessWidget {
  final Vehicle vehicle;

  VehicleQuickView({required this.vehicle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(vehicle.imageUrl),
          SizedBox(height: 8.0),
          Text('${vehicle.make} ${vehicle.model}', style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),
          Text('Year: ${vehicle.year}'),
          Text('Price: \$${vehicle.price.toStringAsFixed(2)}'),
        ],
      ),
    );
  }
}
