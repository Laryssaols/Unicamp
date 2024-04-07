import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../model/tip.dart';

class TipScreen extends StatefulWidget {
  const TipScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<TipScreen> createState() => _TipScreenState();
}

class _TipScreenState extends State<TipScreen> {
  Tip tip = Tip();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
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
