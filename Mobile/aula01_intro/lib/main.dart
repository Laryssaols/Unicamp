import 'package:flutter/material.dart';

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
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepPurple, 
        ),
        scaffoldBackgroundColor: Colors.white, 
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
  List<Widget> getChildren() {
    int numChildren = 100;
    List<Widget> children = [];
    for (var i = 0; i <= numChildren; i++) {
      Color backgroundColor;
      if (i % 2 == 0) {
        backgroundColor = Colors.red;
      } else {
        backgroundColor = Colors.blue;
      }
      children.add(
        Container(
          color: backgroundColor,
          padding: EdgeInsets.all(8.0),
          child: Text(
            '$i',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        ),
      );
    }
    return children;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: getChildren(),
          ),
        ),
      ),
    );
  }
}

