import 'package:flutter/material.dart';
import 'package:are_you_rich/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Are you rich?'),
      ),
      body: HomeBodyWidget(),
    );
  }
}