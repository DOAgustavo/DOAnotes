import 'package:flutter/material.dart';

class BotaoAdicionarArquivo extends StatelessWidget {
  final VoidCallback onPressed;

  BotaoAdicionarArquivo({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: const Color.fromARGB(255, 138, 138, 138),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Icon(Icons.folder, size: 10), // Diminuir o tamanho do ícone
          Positioned(
            left:100,
            bottom: 100,
            child: Icon(Icons.add, size: 10), // Diminuir o tamanho do ícone
          ),
        ],
      ),
    );
  }
}