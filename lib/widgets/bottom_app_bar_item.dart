import 'package:flutter/material.dart';

class BottomAppBarItem extends StatelessWidget {
  final Icon icon;

  const BottomAppBarItem({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        
      },
      icon: icon,
    );
  }
}
