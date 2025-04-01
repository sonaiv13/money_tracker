import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTransactionDialog extends StatefulWidget {
  const AddTransactionDialog({super.key});

  @override
  State<AddTransactionDialog> createState() => _AddTransactionDialogState();
}

class _AddTransactionDialogState extends State<AddTransactionDialog> {

  int? typeIndex = 0;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      height: 750,
      width: double.infinity,
      child: Column(
        children: [
          Container(
            height: 6,
            width: 48,
            margin: EdgeInsets.only(top: 12),
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(3)),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'New Transaction',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.teal,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          CupertinoSlidingSegmentedControl(
            groupValue: typeIndex,
            children: {
              0: Text('Income'),
              1: Text('Expense'),
            },
            onValueChanged: (value){
              setState(() {
                typeIndex = value;
              });
            },
          ),
          SizedBox(height: 20),
          Text('AMOUNT', style: textTheme.bodySmall!.copyWith(color: Colors.teal),
          ),
          TextField(
            inputFormatters: [CurrencyTextInputFormatter.currency(symbol: '\$')],
            textAlign: TextAlign.center,
            decoration: InputDecoration.collapsed(
                hintText: '\$ 0.00',
                hintStyle: TextStyle(color: Colors.grey)
            ),
            keyboardType: TextInputType.number,
            autofocus: true,
          ),
          Text('DESCRIPTION', style: textTheme.bodySmall!.copyWith(color: Colors.teal),
          ),
          TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration.collapsed(
                hintText: 'Enter a description here',
                hintStyle: TextStyle(color: Colors.grey)
            ),
            keyboardType: TextInputType.text,
            autofocus: true,
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 250,
            child: ElevatedButton(
              onPressed: (){},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
              child: Text(
                  'Add',
                style: TextStyle(color: Colors.white),
              )
            ),
          )
        ],
      ),
    );
  }
}
