import 'package:flutter/material.dart';

class AddNoteButton extends StatelessWidget {
  final VoidCallback onPressed;

  AddNoteButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.0, // Ajuste a largura conforme necessário
      height: 40.0, // Ajuste a altura conforme necessário
      child: FloatingActionButton(
        onPressed: onPressed,
        backgroundColor: const Color.fromARGB(255, 138, 138, 138),
        child: Icon(
          Icons.note_add,
          size: 21, // Tamanho do ícone
          color: Colors.white,
        ),
      ),
    );
  }
}
