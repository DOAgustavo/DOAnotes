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

class PastasScreen extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
        child: Stack(
          children: [
            Column(
              children: [
                NamePage(text: 'Pastas'),
                Padding(
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
                            FolderItem(
                              name: 'Notas',
                              count: 0,
                              onTap: () {
                                // Ação ao clicar no botão 'notas'
                                print('oi');
                              },
                            ),
                            SizedBox(height: 0),
                            Divider(
                              color: Colors.white,
                              thickness: 0.1,
                            ),
                            SizedBox(height: 0),
                            FolderItem(
                              name: 'apagadas',
                              count: 0,
                              onTap: () {
                                // Ação ao clicar no botão 'apagadas'
                                print('Apagadas clicado');
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 16,
              left: 16,
              child: BotaoAdicionarArquivo(
                onPressed: () {
                  // Ação ao clicar no botão de adicionar arquivo
                  print('Adicionar arquivo clicado');
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
