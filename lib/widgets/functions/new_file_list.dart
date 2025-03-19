import 'package:flutter/material.dart';
import '../button/folder_item.dart';
import '../button/custom_padding_container.dart';

class NewItemsList extends StatelessWidget {
  final List<FolderItem> newItems;
  final Function(int) onRemove;

  NewItemsList({required this.newItems, required this.onRemove});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 325, // Defina a altura máxima desejada
      decoration: BoxDecoration(
        // Cor de fundo verde claro
        borderRadius: BorderRadius.circular(10),
      ),
      child: SingleChildScrollView(
        child: CustomPaddingContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (int i = 0; i < newItems.length; i++)
                Dismissible(
                  key: Key('${newItems[i].name}-$i'), // Garante que a chave seja única
                  direction: DismissDirection.endToStart,
                  dismissThresholds: {
                    DismissDirection.endToStart: 0.5,
                  },
                  onDismissed: (direction) {
                    onRemove(i);
                  },
                  background: Container(
                    
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Icon(
                      Icons.delete,
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(child: newItems[i]),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
