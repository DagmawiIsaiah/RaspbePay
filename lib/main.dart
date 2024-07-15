import 'package:flutter/material.dart';

import '../screens/screens.dart';
import '../raspbepay_theme.dart';

void main() {
  runApp(const RaspbePay());
}

class RaspbePay extends StatelessWidget {
  const RaspbePay({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RaspbePay',
      debugShowCheckedModeBanner: false,
      theme: RaspbepayTheme.lightTheme,
      initialRoute: LoginScreen.routeName,
      routes: {
        LoginScreen.routeName: (context) => const LoginScreen(),
        SignupScreen.routeName: (context) => const SignupScreen(),
        VerifyPhoneScreen.routeName: (context) => const VerifyPhoneScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        DashboardScreen.routeName: (context) => const DashboardScreen(),
      },
    );
  }
}
