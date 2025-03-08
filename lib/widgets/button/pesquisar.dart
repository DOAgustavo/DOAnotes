import 'package:flutter/material.dart';

class BotaoPesquisa extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  BotaoPesquisa({required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 1.0), // Diminuir o padding
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30), // Diminuir o borderRadius
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        children: [
          Icon(Icons.search, color: Colors.grey, size: 20), // Diminuir o tamanho do ícone
          SizedBox(width: 6),
          Expanded(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(color: Colors.grey, fontSize: 16), // Diminuir o tamanho da fonte
                border: InputBorder.none,
              ),
              style: TextStyle(fontSize: 16), // Diminuir o tamanho da fonte
            ),
          ),
        ],
      ),
    );
  }
}