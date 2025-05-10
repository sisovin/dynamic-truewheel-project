import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildIcon(FontAwesomeIcons.facebook, 'https://facebook.com'),
        _buildIcon(FontAwesomeIcons.twitter, 'https://twitter.com'),
        _buildIcon(FontAwesomeIcons.instagram, 'https://instagram.com'),
        _buildIcon(FontAwesomeIcons.linkedin, 'https://linkedin.com'),
      ],
    );
  }

  Widget _buildIcon(IconData icon, String url) {
    return GestureDetector(
      onTap: () {
        // Open the URL
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 8.0),
          child: Icon(
            icon,
            size: 32.0,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
