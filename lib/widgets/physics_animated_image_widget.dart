import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:are_you_rich/utils/utils.dart';

class PhysicsAnimatedImageWidget extends StatefulWidget {
  final double x;
  final double endY;
  final double size;
  final double offset;

  PhysicsAnimatedImageWidget({
    Key key,
    @required this.x,
    @required this.endY,
    @required this.size,
    @required this.offset
  }): super(key: key);

  @override
  State<StatefulWidget> createState() => _PhysicsAnimatedImageWidgetState();
}

class _PhysicsAnimatedImageWidgetState extends State<PhysicsAnimatedImageWidget> with SingleTickerProviderStateMixin {
  GravitySimulation _simulation;
  AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _simulation = GravitySimulation(100.0 * widget.offset, 0, widget.endY, 0);
    _controller = AnimationController(vsync: this, upperBound: widget.endY)..addListener(() {
      setState(() {});
    });
    _controller.animateWith(_simulation);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: widget.x,
      top: _controller.value,
      width: widget.size * widget.offset,
      height: widget.size * widget.offset,
      child: Container(
        child: Image(image: Assets.icDiamond,),
      ),
    );
  }
}