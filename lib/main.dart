import 'package:flutter/material.dart';
import 'package:instagram/pages/splash_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      home: SplashPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
