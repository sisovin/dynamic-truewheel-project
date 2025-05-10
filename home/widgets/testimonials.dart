import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Testimonial {
  final String user;
  final String content;
  final int rating;

  Testimonial({
    required this.user,
    required this.content,
    required this.rating,
  });
}

class Testimonials extends StatefulWidget {
  final List<Testimonial> testimonials;

  Testimonials({required this.testimonials});

  @override
  _TestimonialsState createState() => _TestimonialsState();
}

class _TestimonialsState extends State<Testimonials> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          items: widget.testimonials.map((testimonial) {
            return Builder(
              builder: (BuildContext context) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          testimonial.user,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(testimonial.content),
                        SizedBox(height: 8.0),
                        Row(
                          children: List.generate(5, (index) {
                            return Icon(
                              index < testimonial.rating
                                  ? Icons.star
                                  : Icons.star_border,
                            );
                          }),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.testimonials.map((testimonial) {
            int index = widget.testimonials.indexOf(testimonial);
            return GestureDetector(
              onTap: () {
                setState(() {
                  _currentIndex = index;
                });
              },
              child: Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == index
                      ? Color.fromRGBO(0, 0, 0, 0.9)
                      : Color.fromRGBO(0, 0, 0, 0.4),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
