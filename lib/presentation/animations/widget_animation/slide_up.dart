import 'package:flutter/material.dart';

class SlideUpAnim extends StatelessWidget {
  final Animation<double> animation;
  final Widget animatedWidget;

  const SlideUpAnim(
      {Key? key, required this.animation, required this.animatedWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animation,
        builder: (_, Widget? child) {
          return Transform.translate(
            offset: Offset(0.0, -32* animation.value),
            child: Opacity(
              opacity: animation.value,
              child: animatedWidget,
            ),
          );
        });
  }
}
