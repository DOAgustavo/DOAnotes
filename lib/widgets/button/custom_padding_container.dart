import 'package:flutter/material.dart';

class CustomPaddingContainer extends StatelessWidget {
  final Widget child;

  CustomPaddingContainer({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 58, 58, 58),
        borderRadius: BorderRadius.circular(10), // Diminuir o borderRadius
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 6.0,
          bottom: 6.0,
          left: 5.0,
          right: 5.0,
        ),
        child: child,
      ),
    );
  }
}
