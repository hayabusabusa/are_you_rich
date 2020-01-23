import 'package:flutter/material.dart';

class HomeScoreWidget extends StatelessWidget {
  final Image image;
  final int value;

  HomeScoreWidget({
    Key key,
    @required this.image,
    @required this.value,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 24,
              height: 24,
              child: image,
            ),
            SizedBox(width: 8,),
            Text('x $value'),
          ],
        ),
      ),
    );
  }
}