import 'package:flutter/material.dart';

import 'package:intl/date_symbol_data_local.dart';
import 'package:personal_expenses/widgets/user_transaction.dart';

void main() {
  initializeDateFormatting('es_pa', null).then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Expenses'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              elevation: 10,
              color: Colors.blue,
              child: Text('CHART'),
            ),
          ),
          UserTransaction(),
        ],
      ),
    );
  }
}
