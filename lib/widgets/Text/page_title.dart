import 'package:flutter/material.dart';

class NamePage extends StatelessWidget {
  final String text;

  NamePage({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 20.0,
      ), // Adicione padding para o conteúdo
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: const Color(0xFF303030), // Cor cinza claro
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
