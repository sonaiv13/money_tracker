import 'package:flutter/material.dart';
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
    );
  }
}


