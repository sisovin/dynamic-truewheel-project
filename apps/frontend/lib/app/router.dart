import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'app.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => MyHomePage(),
    ),
    // Add more routes here as needed
  ],
);
