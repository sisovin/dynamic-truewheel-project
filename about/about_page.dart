import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About Our Company',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 16.0),
            Text(
              'We are a leading company in the automotive industry, providing top-notch services and vehicles to our customers. Our mission is to deliver excellence and innovation in everything we do.',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 16.0),
            Text(
              'Our Values',
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(height: 8.0),
            Text(
              '1. Customer Satisfaction: We prioritize our customers and strive to exceed their expectations.',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              '2. Innovation: We embrace new technologies and ideas to stay ahead in the industry.',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              '3. Integrity: We conduct our business with honesty and transparency.',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 16.0),
            Text(
              'Our Team',
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(height: 8.0),
            Text(
              'Our team consists of experienced professionals who are passionate about the automotive industry. We work together to achieve our goals and deliver the best results for our customers.',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}
