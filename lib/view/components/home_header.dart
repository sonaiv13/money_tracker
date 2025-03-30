import 'package:flutter/material.dart';

import '../widgets/header_card.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            'MONEY TRACKER',
            style:
              textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.teal.shade900),
          ),
          const SizedBox(height: 12),
          Text(
            'Balance:',
            style:
            textTheme.bodySmall!.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white.withOpacity(0.5)),
          ),
          Text(
            '\$ 1,000.00',
            style:
            textTheme.headlineLarge!.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: const Row(
              children: [
                HeaderCard(),
                SizedBox(width: 12),
                HeaderCard(),
            ],),
          )
      ],),
    );
  }
}
