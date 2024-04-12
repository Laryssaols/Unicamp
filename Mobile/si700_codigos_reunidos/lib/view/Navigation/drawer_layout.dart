import 'package:flutter/material.dart';
import '../flag_screen.dart';
import '../formulario.dart';
import '../tip_screen.dart';

class DrawerLayout extends StatefulWidget {
  const DrawerLayout({Key? key}) : super(key: key);

  @override
  State<DrawerLayout> createState() => _DrawerLayoutState();
}

class _DrawerLayoutState extends State<DrawerLayout> {
  int _currentScreen = 0;

  // 10 - Função para mudar de tela
  void changeScreen(int value) {
    setState(() {
      _currentScreen = value;
      Navigator.pop(context); // 10c - Fechar o drawer
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text("asdf"),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              title: Text("Primeira Tela"),
              tileColor: Colors.white,
              onTap: () {
                // 11 - Chamar a função changeScreen
                changeScreen(0);
              },
            ),
            ListTile(
              title: Text("Segunda Tela"),
              tileColor: Colors.white,
              onTap: () {
                // 11 - Chamar a função changeScreen
                changeScreen(1);
              },
            ),
            ListTile(
              title: Text("Terceira Tela"),
              tileColor: Colors.white,
              onTap: () {
                // 11 - Chamar a função changeScreen
                changeScreen(2);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Drawer Layout"),
      ),
      body: IndexedStack(
        index: _currentScreen,
        children: [
          FlagScreen(title: "FlagScreen"),
          TipScreen(title: "TipScreen"),
          Formulario(),
        ],
      ),
    );
  }
}
