import 'package:flutter/material.dart';

class TeamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Our Team'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Meet Our Team',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 16.0),
            TeamMemberCard(
              name: 'John Doe',
              position: 'CEO',
              description: 'John is the CEO of the company with over 20 years of experience in the automotive industry.',
            ),
            SizedBox(height: 16.0),
            TeamMemberCard(
              name: 'Jane Smith',
              position: 'CTO',
              description: 'Jane is the CTO, leading the technology and innovation efforts of the company.',
            ),
            SizedBox(height: 16.0),
            TeamMemberCard(
              name: 'Michael Johnson',
              position: 'CFO',
              description: 'Michael is the CFO, managing the financial operations and strategies of the company.',
            ),
          ],
        ),
      ),
    );
  }
}

class TeamMemberCard extends StatelessWidget {
  final String name;
  final String position;
  final String description;

  TeamMemberCard({
    required this.name,
    required this.position,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(height: 8.0),
            Text(
              position,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(height: 8.0),
            Text(
              description,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}
