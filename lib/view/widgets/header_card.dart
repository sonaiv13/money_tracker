import 'package:flutter/material.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        margin: EdgeInsets.zero,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.money_off, color: Colors.red,),
                  Text('Expenses'),
                ],
              ),
              Text('\$ 500.00'),
            ],
          ),
        ),
      ),
    );
  }
}
