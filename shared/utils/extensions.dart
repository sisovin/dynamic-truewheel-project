import 'package:flutter/material.dart';

extension StringExtensions on String {
  bool get isValidEmail {
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    return emailRegex.hasMatch(this);
  }

  String get capitalize {
    if (this.isEmpty) {
      return this;
    }
    return this[0].toUpperCase() + this.substring(1);
  }
}

extension ContextExtensions on BuildContext {
  void showSnackBar(String message) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  void navigateTo(Widget page) {
    Navigator.of(this).push(
      MaterialPageRoute(builder: (context) => page),
    );
  }
}
