import 'package:flutter/material.dart';
import 'flags.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Descubra a Bandeira',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff610ef2)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Descubra a Bandeira'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Flags flags = Flags();
  bool _playAgain = false;
  int _attempts = 3;
  bool _gameOver = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            children: [
              Text(
                ' Qual é a bandeira do país ${flags.answer}?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              // Define um espaço vertical de 20 pixels.
              SizedBox(height: 20),
              // Define um Expanded widget para ocupar todo o espaço disponível na tela.
              Expanded(
                // Define um GridView.builder para construir uma grade de cartas de bandeira.
                child: GridView.builder(
                  // Define o número total de itens no GridView.
                  itemCount: flags.getDeck().length,
                  // Define o layout da grade com um número fixo de colunas (3 neste caso).
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  // Define como cada item da grade será construído.
                  itemBuilder: (BuildContext context, int i) {
                    return GestureDetector(
                      onTap: () {
                        // Manipula o evento de toque em uma carta.
                        if (!_gameOver) {
                          // Se o jogo não terminou, verifica se a carta selecionada está correta.
                          bool correct = flags.checkAnswer(i);
                          _attempts--;

                          if (correct && _attempts >= 0) {
                            // Se a resposta estiver correta e ainda houver tentativas restantes, mostra um AlertDialog.
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text("Acertou!"),
                                  content: Text("Deseja jogar novamente?"),
                                  actions: [
                                    // Botão "Sim" para jogar novamente.
                                    TextButton(
                                      onPressed: () {
                                        setState(() {
                                          // Reseta o jogo.
                                          _playAgain = true;
                                          _gameOver = false;
                                          flags.resetGame();
                                        });
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('Sim'),
                                    ),
                                    // Botão "Não" para fechar o AlertDialog.
                                    TextButton(
                                      onPressed: () {
                                        setState(() {
                                          // Define o jogo como terminado.
                                          _gameOver = true;
                                        });
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('Não'),
                                    ),
                                  ],
                                );
                              },
                            );
                          } else if (!correct && _attempts > 0) {
                            // Se a resposta estiver incorreta e ainda houver tentativas restantes, mostra um AlertDialog.
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text(
                                      "Errou! Restam $_attempts tentativas."),
                                  actions: [
                                    // Botão "OK" para fechar o AlertDialog.
                                    TextButton(
                                      onPressed: () {
                                        setState(() {});
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('OK'),
                                    ),
                                  ],
                                );
                              },
                            );
                          } else {
                            // Se não houver mais tentativas, define o jogo como terminado.
                            setState(() {
                              _gameOver = true;
                            });
                          }
                        } else {
                          // Se o jogo já terminou, mostra um AlertDialog informando ao jogador.
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text("Fim de Jogo!"),
                                content: Text(
                                    "Você não pode mais jogar nesta rodada."),
                                actions: [
                                  // Botão "OK" para fechar o AlertDialog.
                                  TextButton(
                                    onPressed: () {
                                      setState(() {});
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('OK'),
                                  ),
                                  // Botão "Jogar novamente" para reiniciar o jogo.
                                  TextButton(
                                    onPressed: () {
                                      setState(() {
                                        _playAgain = false;
                                        _attempts = 3;
                                        _gameOver = false;
                                        flags.resetGame();
                                      });
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('Jogar novamente'),
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      },
                      // Define o conteúdo de cada carta (uma imagem de bandeira).
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Container para exibir a imagem da bandeira.
                          Container(
                            padding: EdgeInsets.all(8.0),
                            margin: EdgeInsets.all(8.0),
                            color: Colors.blue,
                            alignment: Alignment.center,
                            child: Image.asset(
                              'assets/${flags.getDeck()[i]}', // Caminho da imagem
                              width: 100, // Largura da imagem
                              height: 70, // Altura da imagem
                              fit: BoxFit
                                  .cover, // Ajusta para cobrir todo o espaço
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

              // Define outro espaço vertical de 20 pixels.
              SizedBox(height: 20),

              // Exibe o número de tentativas restantes.
              Text(
                'Tentativas restantes: $_attempts',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
