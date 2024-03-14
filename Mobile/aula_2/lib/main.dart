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
  String current = '';


    List<Widget> getChildren({@required  rotulos}) {
    List<Widget> children = [];
      rotulos?.forEach((element) {
      children.add(
        TextButton(
        onPressed: (){
          setState(() {
            current = element.toString();
          });
        },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 4.0),
            height: 20,
            width: 20, // Adicionando a largura ao Container
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 24, 128, 247),
            ),
            child: Center(
              child: Text(
                '$element',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      );
    });
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
            children: [
              Text(current),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                      getChildren(rotulos: ["a", "b", "c", 1, 2, 3, 4, 5, 6])),
            ],
          ),
        ),
      ),
    );
  }
}