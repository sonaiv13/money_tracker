import 'package:flutter/material.dart';
import 'package:money_tracker/view/components/add_transaction_dialog.dart';
import 'components/home_header.dart';
import 'components/transactions_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            HomeHeader(),
            TransactionsList()
        ],),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
          onPressed: () {
            //Show bottom sheet to add transaction
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) {
                  return AddTransactionDialog();
                });
      },
          child: Icon(Icons.add, color: Colors.white,),
      ),
    );
  }
}


