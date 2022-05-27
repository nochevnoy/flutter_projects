import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import './transactions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'New Head',
      amount: 13.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'New Headphones',
      amount: 23.99,
      date: DateTime.now(),
    ),
  ];

late String titleInput;
late String amountInput;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.green,
                child: Text('Charts'),
                elevation: 5,
              ),
            ),
            Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(labelText: 'Title'),
                      onChanged: (value) {
                        titleInput = value;
                      },
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Amount'),
                      onChanged: (value) => amountInput = value,
                    ),
                    TextButton(
                      child: Text('Add transaction'),
                      // style: ,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: transactions.map((tx) {
                return Card(
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 15,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.purple,
                            width: 2,
                            style: BorderStyle.solid,
                          ),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Text(
                          '\$${tx.amount}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.purple,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            tx.title,
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            DateFormat.yMMM().format(tx.date),
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ],
        ));
  }
}
