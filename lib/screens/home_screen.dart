import 'package:flutter/material.dart';
import 'package:are_you_rich/utils/utils.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Are you rich?'),
      ),
      body: Center(
        child: Image(image: Assets.icDiamond,),
      ),
    );
  }
}