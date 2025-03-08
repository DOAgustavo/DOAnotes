import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget {
  final Widget child;

  BackgroundContainer({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFEDE7F6), // Cor de fundo verde claro
      child: child,
    );
  }
}
