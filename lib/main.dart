import 'package:flutter/material.dart';
import 'package:are_you_rich/screens/screens.dart';

void main() => runApp(AreYouRichApp());

class AreYouRichApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Are you rich?',
      home: HomeScreen(),
    );
  }
}