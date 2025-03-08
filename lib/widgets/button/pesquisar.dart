import 'package:flutter/material.dart';

class BotaoPesquisa extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  BotaoPesquisa({required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: 6.0, vertical: 2.0), // Ajustar o padding
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30), // Manter o borderRadius
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        children: [
          Icon(Icons.search,
              color: Colors.grey, size: 20), // Manter o tamanho do ícone
          SizedBox(width: 4),
          Expanded(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 18), // Manter o tamanho da fonte
                border: InputBorder.none,
              ),
              style: TextStyle(fontSize: 14), // Manter o tamanho da fonte
            ),
          ),
        ],
      ),
    );
  }
}
