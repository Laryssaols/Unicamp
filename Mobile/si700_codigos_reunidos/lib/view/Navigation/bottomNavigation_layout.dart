import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../flag_screen.dart';
import '../formulario.dart';
import '../tip_screen.dart';

class BottomNavigationLayout extends StatefulWidget {
  const BottomNavigationLayout({super.key});

  @override
  State<BottomNavigationLayout> createState() => _BottomNavigationLayoutState();
}

class _BottomNavigationLayoutState extends State<BottomNavigationLayout> {
  int _currentScreen = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layout com BottomNavigationBar"),
        backgroundColor: Colors.blue,
      ),
      body: IndexedStack(
        index: _currentScreen,
        children: [
          FlagScreen(title: "FlagScreen"),
          TipScreen(title: "TipScreen"),
          Formulario(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: "Primeira"),
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: "Segunda"),
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: "Terceira"),
        ],
        onTap: (value) {
          setState(() {
            _currentScreen = value;
          });
        },
        currentIndex: _currentScreen,
        fixedColor: Colors.red,
      ),
    );
  }
}
