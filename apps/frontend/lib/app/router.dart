import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'app.dart';
import 'auth/login.dart';
import 'auth/register.dart';
import 'auth/forgot_password.dart';
import 'home_screen.dart';
import 'auth_provider.dart';
import 'package:provider/provider.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => MyHomePage(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => RegisterScreen(),
    ),
    GoRoute(
      path: '/forgot-password',
      builder: (context, state) => ForgotPasswordScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => HomeScreen(),
      redirect: (context, state) {
        final authProvider = Provider.of<AuthProvider>(context, listen: false);
        return authProvider.isAuthenticated ? null : '/login';
      },
    ),
  ],
  errorBuilder: (context, state) => Scaffold(
    body: Center(
      child: Text('404 - Page not found'),
    ),
  ),
);
