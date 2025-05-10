import 'package:flutter/material.dart';

class FeaturesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Features'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Our Features',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 16.0),
            Text(
              '1. Wide Range of Vehicles: We offer a diverse selection of vehicles to meet your needs.',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 8.0),
            Text(
              '2. Expert Maintenance: Our team of experienced technicians ensures your vehicle is always in top condition.',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 8.0),
            Text(
              '3. Flexible Financing: We provide various financing options to make your purchase easier.',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 8.0),
            Text(
              '4. Customer Support: Our dedicated customer support team is here to assist you with any inquiries.',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 8.0),
            Text(
              '5. Trade-In Options: We offer competitive trade-in options for your old vehicle.',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}
