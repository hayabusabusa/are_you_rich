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
  final List<double> _bottomList = [-300, -150, -100, -50, 0];

  List<Widget> _widets = [];
  double _bottomPosition = -300;

  Size _getSizeOfStack() {
    final RenderBox renderBox = _globalKey.currentContext.findRenderObject();
    return renderBox.size;
  }
  
  void _onPressed() {
    final Size size = _getSizeOfStack();
    final double offset = _random.nextDouble() + 1.0; // 0.5 ~ 1.5 
    final double xPosition = _random.nextDouble() * size.width;
    final Widget widget = PhysicsAnimatedImageWidget(x: xPosition, endY: size.height, size: 24, offset: offset,);
    
    setState(() {
      _widets.add(widget);

      final int bottomListIndex = _widets.length ~/ 50;
      _bottomPosition = bottomListIndex >= _bottomList.length ? _bottomList.last : _bottomList[bottomListIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      key: _globalKey,
      fit: StackFit.expand,
      children: <Widget>[
        Center(
          child: AYRImageButton(
            image: Image(image: Assets.icDiamond),
            onPressed: () { _onPressed(); },
          ),
        ),
        Positioned(
          right: 8,
          top: 8,
          child: HomeScoreWidget(image: Image(image: Assets.icDiamond,), value: _widets.length,),
        ),
        Stack(
          children: _widets,
        ),
        AnimatedPositioned(
          curve: Curves.elasticInOut,
          duration: Duration(milliseconds: 1500),
          bottom: _bottomPosition,
          child: Image(
            image: Assets.imgDiamondMountain,
            fit: BoxFit.fitWidth,
          ),
        ),
      ]
    );
  }
}