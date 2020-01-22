import 'package:flutter/material.dart';
import 'package:are_you_rich/utils/utils.dart';

void main() => runApp(AreYouRichApp());

class AreYouRichApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Are you rich?',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Are you rich?'),
        ),
        body: Center(
          child: Image(image: Assets.icDiamond,),
        ),
      ),
    );
  }
}