import 'package:flutter/material.dart';
import '../widgets/forms/background_container.dart';
import '../widgets/Text/page_title.dart';
import '../widgets/button/custom_padding_container.dart';
import '../widgets/button/folder_item.dart';
import '../widgets/button/add_file_button.dart';
import '../widgets/button/add_note_button.dart';
import '../widgets/button/pesquisar.dart';

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
                            hintText: 'Pesquise aqui...',
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
                            CustomPaddingContainer(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ...newItems,
                                ],
                              ),
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
                  addItem(newItem);
                },
              ),
            ),
            Positioned(
              bottom: 16,
              right: 16,
              child: AddNoteButton(
                onPressed: () {
                  // Ação ao clicar no botão de adicionar nota
                  print('Adicionar nota clicado');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
