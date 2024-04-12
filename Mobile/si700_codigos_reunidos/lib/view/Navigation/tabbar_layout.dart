import 'package:flutter/material.dart';
import '../flag_screen.dart';
import '../formulario.dart';
import '../tip_screen.dart';

class TabBarLayout extends StatelessWidget {
  const TabBarLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Layout com TabBAr"),
          bottom: TabBar(tabs: [
            Tab(child: Text("Primeira"), icon: Icon(Icons.abc_outlined)),
            Tab(
                child: Text("Segunda"),
                icon: Icon(Icons.baby_changing_station)),
            Tab(child: Text("Terceira"), icon: Icon(Icons.cabin_rounded))
          ]),
        ),
        body: TabBarView(
          children: [
            FlagScreen(title: "FlagScreen"),
            TipScreen(title: "TipScreen"),
            Formulario(),
          ],
        ),
      ),
    );
  }
}
