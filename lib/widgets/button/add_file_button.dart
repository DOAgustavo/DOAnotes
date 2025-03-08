import 'package:flutter/material.dart';

class BotaoAdicionarArquivo extends StatelessWidget {
  final VoidCallback onPressed;

  BotaoAdicionarArquivo({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.0, // Ajuste a largura conforme necessário
      height: 40.0, // Ajuste a altura conforme necessário
      child: FloatingActionButton(
        onPressed: onPressed,
        backgroundColor: const Color.fromARGB(255, 138, 138, 138),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Icon(
              Icons.folder,
              size: 25, // Ajuste o tamanho do ícone conforme necessário
              color: const Color.fromARGB(255, 233, 233, 233),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Icon(
                Icons.add_circle,
                size: 10,
                color: const Color.fromARGB(255, 58, 58, 58),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
