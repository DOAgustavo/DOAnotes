import 'package:flutter/material.dart';
import 'folder_item.dart';

class BotaoAdicionarArquivo extends StatelessWidget {
  final Function(FolderItem) onAdd;

  BotaoAdicionarArquivo({required this.onAdd});

  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.0, // Ajuste a largura conforme necessário
      height: 40.0, // Ajuste a altura conforme necessário
      child: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Adicionar Novo Arquivo'),
              content: Container(
                height: 60,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      controller: _nameController,
                      decoration: InputDecoration(labelText: 'Nome'),
                    ),
                  ],
                ),
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
                    final String name = _nameController.text;
                    final FolderItem newItem = FolderItem(
                      name: name,
                      count: 0, // Defina um valor padrão para count
                      onTap: () {
                        // Defina a ação ao clicar no novo item
                      },
                    );
                    onAdd(newItem);
                    Navigator.of(context).pop();
                  },
                  child: Text('Adicionar'),
                ),
              ],
            ),
          );
        },
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
