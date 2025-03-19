import 'package:flutter/material.dart';
import '../widgets/forms/background_container.dart';
import '../widgets/Text/page_title.dart';
import '../widgets/button/custom_padding_container.dart';
import '../widgets/button/folder_item.dart';
import '../widgets/button/add_file_button.dart';
import '../widgets/button/add_note_button.dart';
import '../widgets/button/pesquisar.dart';
import '../widgets/functions/new_file_list.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PastasScreen();
  }
}

class PastasScreen extends StatefulWidget {
  @override
  _PastasScreenState createState() => _PastasScreenState();
}

class _PastasScreenState extends State<PastasScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<FolderItem> items = [
    FolderItem(
      name: 'Notas',
      count: 0,
      onTap: () {
        // Ação ao clicar no botão 'notas'
        print('oi');
      },
    ),
    FolderItem(
      name: 'apagadas',
      count: 0,
      onTap: () {
        // Ação ao clicar no botão 'apagadas'
        print('Apagadas clicado');
      },
    ),
  ];

  List<FolderItem> newItems = [];

  void addItem(FolderItem item) {
    setState(() {
      newItems.add(item);
    });
  }

  void removeItem(int index) {
    setState(() {
      newItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
        child: Stack(
          children: [
            Column(
              children: [
                
               
                 NamePage(text: 'Pastas'),
              
             
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BotaoPesquisa(
                            controller: _searchController,
                          
                          ),
                          SizedBox(
                            height: 12,
                          ), // Diminuir o espaço entre o botão de pesquisa e o restante do conteúdo
                          CustomPaddingContainer(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                items[0], // Notas
                                Divider(
                                  color: Colors.white,
                                  thickness: 1,
                                ),
                                items[1], // Apagadas
                              ],
                            ),
                          ),
                          if (newItems.isNotEmpty) ...[
                            SizedBox(
                              height: 16,
                            ), // Espaço entre os itens existentes e o novo item
                            NewItemsList(
                              newItems: newItems,
                              onRemove: removeItem,
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 16,
              left: 16,
              child: BotaoAdicionarArquivo(
                onAdd: (newItem) {
                  addItem(newItem); // Certifique-se de que 'addItem' está definido no escopo
                },
              ),
            ),
            Positioned(
              bottom: 16,
              right: 16,
              child: AddNoteButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      final TextEditingController _nameController = TextEditingController();
                      return AlertDialog(
                        title: Text('Adicionar Nova Nota'),
                        content: TextField(
                          controller: _nameController,
                          decoration: InputDecoration(labelText: 'Nome da Nota'),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(); // Fecha o diálogo
                            },
                            child: Text('Cancelar'),
                          ),
                          TextButton(
                            onPressed: () {
                              final String name = _nameController.text.trim();
                              if (name.isNotEmpty) {
                                final FolderItem newItem = FolderItem(
                                  name: name,
                                  count: 0, // Valor padrão
                                  onTap: () {
                                    // Ação ao clicar na nova nota
                                    print('Nota $name clicada');
                                  },
                                );
                                setState(() {
                                  newItems.add(newItem); // Adiciona a nova nota à lista
                                });
                              }
                              Navigator.of(context).pop(); // Fecha o diálogo
                            },
                            child: Text('Adicionar'),
                          ),
                        ],
                      );
                    },
                  );
                }, onAdd: (FolderItem ) {  },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
