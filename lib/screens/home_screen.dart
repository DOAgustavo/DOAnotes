import 'package:flutter/material.dart';
import '../widgets/button/arquivo.dart';
import '../widgets/button/botao_adicionar_arquivo.dart';
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
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                    top: 40.0,
                    bottom: 20.0), // Adicione padding para o conteúdo
                child: Center(
                  child: Text(
                    'Pastas',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BotaoPesquisa(
                      controller: _searchController,
                      hintText: 'Pesquise aqui...',
                    ),
                    SizedBox(
                        height:
                            12), // Diminuir o espaço entre o botão de pesquisa e o restante do conteúdo
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 58, 58, 58),
                        borderRadius: BorderRadius.circular(
                            10), // Diminuir o borderRadius
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 6.0,
                            bottom: 6.0,
                            left: 5.0,
                            right:
                                5.0), // Diminuir o padding superior e inferior
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
        ],
      ),
    );
  }
}
