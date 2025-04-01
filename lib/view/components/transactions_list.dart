import 'package:flutter/material.dart';

class TransactionsList extends StatelessWidget {
  const TransactionsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white
        ),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.attach_money, color: Colors.teal),
              title: Text('Income'),
              subtitle: Text('You got \$ 1,000.00'),
              trailing: Text('\$ 1,000.00', style: TextStyle(fontSize: 14)),
            ),
            ListTile(
              leading: Icon(Icons.money_off, color: Colors.red),
              title: Text('Expense'),
              subtitle: Text('You spent \$ 500.00'),
              trailing: Text('- \$ 500.00', style: TextStyle(fontSize: 14)),
            )
          ],
        ),
      ),
    );
  }
}