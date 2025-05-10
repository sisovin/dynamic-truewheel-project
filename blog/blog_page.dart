import 'package:flutter/material.dart';

class BlogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blog'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Articles and Blog Posts',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 16.0),
            BlogPost(
              title: 'The Future of Electric Vehicles',
              author: 'John Doe',
              date: 'March 10, 2023',
              content: 'Electric vehicles are becoming more popular...',
            ),
            SizedBox(height: 16.0),
            BlogPost(
              title: 'Top 10 Car Maintenance Tips',
              author: 'Jane Smith',
              date: 'February 25, 2023',
              content: 'Regular maintenance is essential for keeping your car in top condition...',
            ),
          ],
        ),
      ),
    );
  }
}

class BlogPost extends StatelessWidget {
  final String title;
  final String author;
  final String date;
  final String content;

  BlogPost({
    required this.title,
    required this.author,
    required this.date,
    required this.content,
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
              title,
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 8.0),
            Text(
              'By $author on $date',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            SizedBox(height: 8.0),
            Text(
              content,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}
