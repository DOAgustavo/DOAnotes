import 'package:flutter/material.dart';

class BotaoPesquisa extends StatelessWidget {
  final TextEditingController controller;
  final String text = "pesquise aqui..."; // Valor fixo para o texto

  const BotaoPesquisa({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(
          horizontal: 6.0, vertical: 2.0), // Ajustar o padding
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30), // Manter o borderRadius
        border: Border.all(color: Colors.grey),
      ),
       child: Row(
        crossAxisAlignment: CrossAxisAlignment.center, // Alinhar verticalmente
        children: [
          Icon(Icons.search,
              color: Colors.grey, size: 20), // Ícone de pesquisa
          SizedBox(width: 4), // Espaço entre o ícone e o campo de texto
          Expanded(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: text, // Texto de dica
                border: InputBorder.none, // Sem borda
                isCollapsed: true, // Remove o padding interno do TextField
              ),
              style: TextStyle(fontSize: 14), // Tamanho da fonte
            ),
          ),
        ],
      ),
    );
  }
}