import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  final Widget child;

  const GradientBackground({required this.child});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.black,
          child: child,
        ),
        Positioned(
          top: -60,
          right: -60,
          child: Container(
            width: 500,
            height: 500,
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                center: Alignment.topRight,
                colors: [
                  Color(0xFFBA8B02),
                  Colors.transparent,
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
