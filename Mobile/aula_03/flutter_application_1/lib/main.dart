
import 'package:flutter/material.dart';
import 'package:flutter_application_1/tip.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Tip tip = Tip();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              initialValue: tip.amount,
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  tip.amount = value;
                });
              },
            ),
            InputDecorator(
                decoration:
                    const InputDecoration(labelText: 'Grjeta Customizada'),
                child: Slider(
                    min: 1,
                    max: 50,
                    value: double.parse(tip.customTip),
                    onChanged: (value) {
                      setState(() {
                        tip.customTip = value.toStringAsFixed(2);
                      });
                    })),
            Text(tip.defaultTippedAmount),
            Text(tip.customTippedAmount),
            Text(tip.amountPlusDefaultTippedAmount),
            Text(tip.amountPlusCustomTippedAmount)
          ],
        ),
      ),
    );
  }
}
