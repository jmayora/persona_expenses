import 'package:flutter/material.dart';
import 'package:personal_expenses/widgets/user_transaction.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addNewTransaction;

  NewTransaction(this.addNewTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Title'),
                controller: titleController,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Amount'),
                controller: amountController,
              ),
              // ignore: deprecated_member_use
              FlatButton(
                onPressed: () {
                  addNewTransaction(
                      titleController.text,
                      double.parse(amountController.text));
                },
                textColor: Colors.purple,
                child: Text(
                  'Add Transaction',
                ),
              ),
            ]),
      ),
    );
  }
}
