
import 'package:flutter/material.dart';
import 'package:flutter_application_1/tip.dart';

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
      home: const MyHomePage(title: 'Tip calculator'),
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
                decoration: const InputDecoration(labelText: 'Customed Tip'),
                child: Slider(
                    min: 1,
                    max: 50,
                    value: double.parse(tip.customTip),
                    onChanged: (value) {
                      setState(() {
                        tip.customTip = value.toStringAsFixed(2);
                      });
                    })),
            DataTable(
              columns: <DataColumn>[
                DataColumn(
                  label: Container(
                    color: Color.fromARGB(15, 153, 241, 126),
                    child: Text('Description'),
                  ),
                ),
                DataColumn(
                  label: Container(
                    color: Color.fromARGB(255, 125, 174, 133),
                    child: Text('Amount'),
                  ),
                ),
              ],
              rows: <DataRow>[
                DataRow(cells: <DataCell>[
                  DataCell(Text('1Default Tipped Amount')),
                  DataCell(Text(tip.defaultTippedAmount)),
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('Custom Tipped Amount')),
                  DataCell(Text(tip.customTippedAmount)),
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('Amount Plus Default Tipped Amount')),
                  DataCell(Text(tip.amountPlusDefaultTippedAmount)),
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('Amount Plus Custom Tipped Amount')),
                  DataCell(Text(tip.amountPlusCustomTippedAmount)),
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('Default Tipped Amount Per Customer')),
                  DataCell(Text(tip.defaultTippedAmountPeople)),
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('Custom Tipped Amount Per Customer')),
                  DataCell(Text(tip.customTippedAmountPeople)),
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(
                      Text('Amount Plus Default Tipped Amount Per Customer')),
                  DataCell(Text(tip.amountPlusDefaultTippedAmountPeople)),
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(
                      Text('Amount Plus Custom Tipped Amount Per Customer')),
                  DataCell(Text(tip.amountPlusCustomTippedAmountPeople)),
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

