import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      notchMargin: 4.0,
      shape: const CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          BottomAppBarItem(icon: Icon(Icons.home_filled)),
          BottomAppBarItem(icon: Icon(Icons.payment_rounded)),
          BottomAppBarItem(icon: Icon(Icons.balance)),
          BottomAppBarItem(icon: Icon(Icons.newspaper_rounded)),
          const Spacer(),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.qr_code_2_rounded),
          ),
        ],
      ),
    );
  }
}
