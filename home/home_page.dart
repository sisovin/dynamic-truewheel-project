import 'package:flutter/material.dart';
import 'widgets/hero_carousel.dart';
import 'widgets/search_form.dart';
import 'widgets/featured_vehicles.dart';
import 'widgets/testimonials.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeroCarousel(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SearchForm(),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: FeaturedVehicles(
                vehicles: [
                  Vehicle(
                    make: 'Toyota',
                    model: 'Camry',
                    year: 2020,
                    price: 24000.00,
                    imageUrl: 'https://example.com/toyota_camry.jpg',
                  ),
                  Vehicle(
                    make: 'Honda',
                    model: 'Civic',
                    year: 2019,
                    price: 22000.00,
                    imageUrl: 'https://example.com/honda_civic.jpg',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Testimonials(
                testimonials: [
                  Testimonial(
                    user: 'John Doe',
                    content: 'Great service and amazing cars!',
                    rating: 5,
                  ),
                  Testimonial(
                    user: 'Jane Smith',
                    content: 'I love my new car!',
                    rating: 4,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
