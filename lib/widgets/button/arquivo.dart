import 'package:flutter/material.dart';

class FolderItem extends StatelessWidget {
  final String name;
  final int count;
  final VoidCallback onTap;

  FolderItem({required this.name, required this.count, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8), // Diminuir o borderRadius
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          highlightColor:
              const Color.fromARGB(255, 133, 131, 131).withOpacity(0.3),
          splashColor: const Color.fromARGB(255, 110, 110, 110),
          child: Container(
            padding: const EdgeInsets.all(10.0), // Diminuir o padding
            child: Row(
              children: [
                Icon(Icons.folder,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    size: 20), // Diminuir o tamanho do ícone
                SizedBox(width: 8),
                Text(
                  name,
                  style: TextStyle(
                      fontSize: 16,
                      color: const Color.fromARGB(
                          255, 255, 255, 255)), // Diminuir o tamanho da fonte
                ),
                Spacer(),
                Text(
                  count.toString(),
                  style: TextStyle(
                      fontSize: 16,
                      color: const Color.fromARGB(
                          255, 255, 255, 255)), // Diminuir o tamanho da fonte
                ),
                SizedBox(width: 8),
                Icon(Icons.arrow_forward,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    size: 20), // Diminuir o tamanho do ícone
              ],
            ),
          ),
        ),
      ),
    );
  }
}
