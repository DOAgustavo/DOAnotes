import 'package:flutter/material.dart';
import '../button/folder_item.dart';

class AddNoteButton extends StatelessWidget {
  final Function(FolderItem) onAdd;

  AddNoteButton({required this.onAdd, required Null Function() onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.0, // Ajuste a largura conforme necessário
      height: 40.0, // Ajuste a altura conforme necessário
      child: FloatingActionButton(
        onPressed: () {
          _showAddNoteDialog(context);
        },
        backgroundColor: const Color.fromARGB(255, 138, 138, 138),
        child: Icon(
          Icons.note_add,
          size: 21, // Tamanho do ícone
          color: Colors.white,
        ),
      ),
    );
  }

  void _showAddNoteDialog(BuildContext context) {
    final TextEditingController _nameController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Adicionar Nova Nota'),
        content: TextField(
          controller: _nameController,
          decoration: InputDecoration(labelText: 'Nome da Nota'),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Cancelar'),
          ),
          TextButton(
            onPressed: () {
              final String name = _nameController.text.trim();
              if (name.isNotEmpty) {
                final FolderItem newItem = FolderItem(
                  name: name,
                  count: 0, // Valor padrão para count
                  onTap: () {
                    // Ação ao clicar na nova nota
                  },
                );
                onAdd(newItem); // Adiciona a nova nota
              }
              Navigator.of(context).pop();
            },
            child: Text('Adicionar'),
          ),
        ],
      ),
    );
  }
}