import 'package:flutter/material.dart';
import 'package:are_you_rich/screens/screens.dart';
import 'package:are_you_rich/utils/utils.dart';

import 'utils/utils.dart';

void main() => runApp(AreYouRichApp());

class AreYouRichApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Are you rich?',
      theme: AYRTheme.data,
      home: HomeScreen(),
    );
  }
}