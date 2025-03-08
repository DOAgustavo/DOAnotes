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
          Icon(
            Icons.folder,
            size: 25,
            color: const Color.fromARGB(255, 233, 233, 233),
          ), // Alterar a cor do ícone
          Positioned(
            right: 0,
            bottom: 0,
            child: Icon(
              Icons.add_circle,
              size: 15,
              color: const Color.fromARGB(255, 58, 58, 58),
            ), // Alterar a cor do ícone
          ),
        ],
      ),
    );
  }
}
