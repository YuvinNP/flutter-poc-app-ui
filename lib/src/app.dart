import 'package:awesome_flutter_1/src/screens/first_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: FirstScreen(),
      ),
    );
  }
}
