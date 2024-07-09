import 'package:flutter/material.dart';

import '../raspbepay_theme.dart';

class OperationCard extends StatelessWidget {
  final String title;
  final Size size;

  const OperationCard({super.key, required this.title, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: (size.width - 50) / 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: RaspbePayColor.primaryColor,
      ),
      child: Center(
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Colors.white,
              ),
        ),
      ),
    );
  }
}
