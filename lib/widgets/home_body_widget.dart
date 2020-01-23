import 'dart:math';
import 'package:flutter/material.dart';
import 'package:are_you_rich/widgets/widgets.dart';
import 'package:are_you_rich/utils/utils.dart';

class HomeBodyWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeBodyWidgetState();
}

class _HomeBodyWidgetState extends State<HomeBodyWidget> {
  final GlobalKey _globalKey = GlobalKey();
  final Random _random = Random();
  List<Widget> _widets = [];

  Size _getSizeOfStack() {
    final RenderBox renderBox = _globalKey.currentContext.findRenderObject();
    return renderBox.size;
  }
  
  void _onPressed() {
    final Size size = _getSizeOfStack();
    final double offset = _random.nextInt(5).toDouble();
    final double xPosition = _random.nextDouble() * size.width;
    final Widget widget = PhysicsAnimatedImageWidget(x: xPosition, endY: size.height, size: 24, offset: offset,);

    setState(() {
      _widets.add(widget);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      key: _globalKey,
      children: <Widget>[
        Stack(
          children: _widets,
        ),
        Center(
          child: AYRImageButton(
            image: Image(image: Assets.icDiamond),
            onPressed: () { _onPressed(); },
          ),
        ),
      ],
    );
  }
}