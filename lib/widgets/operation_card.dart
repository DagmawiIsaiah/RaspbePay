import 'package:flutter/material.dart';

import '../raspbepay_theme.dart';

class OperationCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Size size;

  const OperationCard({super.key, required this.title, required this.size, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: (size.width - 84) / 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: RaspbePayColor.primaryColor,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon),
          const SizedBox(height: 10),
          Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Colors.white,
                ),
          ),
        ],
      ),
    );
  }
}
