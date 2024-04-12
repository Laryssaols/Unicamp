import 'package:flutter/material.dart';
import 'package:si700_codigos_reunidos/view/nav.dart';

import '../flag_screen.dart';
import '../tip_screen.dart';

class Customlayout extends StatefulWidget {
  const Customlayout({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Customlayout> createState() => CustomlayoutState();
}

class CustomlayoutState extends State<Customlayout> {
  late PageController _pageViewController = PageController(initialPage: 0);
  int _currentPageIndex = 0;

  List<Widget> children = [
    TipScreen(title: 'Tip Screen'), // Adicionando objeto TipScreen com título
    FlagScreen(
        title: 'Flag Screen'), // Adicionando objeto FlagScreen com título
    Container(color: Colors.blue), // Adicionando container azul
    Container(color: Colors.red), // Adicionando container vermelho
  ];

  @override
  void dispose() {
    _pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TopNavigationBar(
                title: "asdf",
                rotulos: const ["a", "b", "c", "d"],
                onTap: (index, value) {
                  _pageViewController.jumpToPage(index);
                }),
            Expanded(
              child: PageView(
                controller: _pageViewController,
                children: children,
                onPageChanged: (int index) {
                  setState(() {
                    _currentPageIndex = index;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
