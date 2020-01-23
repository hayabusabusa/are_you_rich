import 'package:flutter/material.dart';

class AYRImageButton extends StatelessWidget {
  final Image image;
  final Function() onPressed;

  AYRImageButton({
    Key key,
    @required this.image,
    @required this.onPressed,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 72,
      height: 72,
      child: FloatingActionButton(
        backgroundColor: Colors.white,
        child: image,
        onPressed: onPressed,
      ),
    );
  }
}