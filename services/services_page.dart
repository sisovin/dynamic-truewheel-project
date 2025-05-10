import 'package:flutter/material.dart';

class ServicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Our Services'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Services We Offer',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 16.0),
            Text(
              '1. Vehicle Sales: We offer a wide range of vehicles for sale, including new and used cars.',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 8.0),
            Text(
              '2. Vehicle Maintenance: Our experienced technicians provide top-notch maintenance services to keep your vehicle in excellent condition.',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 8.0),
            Text(
              '3. Financing: We offer flexible financing options to help you purchase your dream vehicle.',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 8.0),
            Text(
              '4. Trade-In: We accept trade-ins and offer competitive prices for your old vehicle.',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 8.0),
            Text(
              '5. Insurance: We provide insurance services to protect your vehicle and give you peace of mind.',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}
