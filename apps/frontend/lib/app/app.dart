import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'auth_provider.dart';
import 'login_screen.dart';
import 'home_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AuthProvider(),
      child: Consumer<AuthProvider>(
        builder: (context, authProvider, child) {
          return MaterialApp(
            title: 'Flutter Web App',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: authProvider.isAuthenticated ? HomeScreen() : LoginScreen(),
          );
        },
      ),
    );
  }
}
