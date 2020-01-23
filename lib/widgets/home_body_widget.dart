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
  List<Widget> _widets = [];

  Size _getSizeOfStack() {
    final RenderBox renderBox = _globalKey.currentContext.findRenderObject();
    return renderBox.size;
  }
  
  void _onPressed() {
    final double width = _getSizeOfStack().width;
    final double xPosition = Random().nextDouble() * width;
    final Widget widget = Positioned(
      left: xPosition,
      top: 0,
      width: 24,
      height: 24,
      child: Container(color: Colors.blue,),
    );

    setState(() {
      _widets.add(widget);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      key: _globalKey,
      children: <Widget>[
        Center(
          child: AYRImageButton(
            image: Image(image: Assets.icDiamond),
            onPressed: () { _onPressed(); },
          ),
        ),
        Stack(
          children: _widets,
        )
      ],
    );
  }
}