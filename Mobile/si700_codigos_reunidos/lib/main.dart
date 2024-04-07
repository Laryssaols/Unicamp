import 'package:flutter/material.dart';
import 'package:si700_codigos_reunidos/view/flag_screen.dart';
import 'package:si700_codigos_reunidos/view/nav.dart';
import 'package:si700_codigos_reunidos/view/tip_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
