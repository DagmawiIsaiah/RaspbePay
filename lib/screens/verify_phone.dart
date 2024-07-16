import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class VerifyPhoneScreen extends StatefulWidget {
  static const String routeName = '/verify-phone';

  const VerifyPhoneScreen({super.key});

  @override
  State<VerifyPhoneScreen> createState() => _VerifyPhoneScreenState();
}

class _VerifyPhoneScreenState extends State<VerifyPhoneScreen> {
  bool _onEditing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 20,
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "OTP Verification",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  "Enter you 6 digit OTP sent to your sms",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 40),
                VerificationCode(
                  textStyle: Theme.of(context).textTheme.bodyLarge!,
                  keyboardType: TextInputType.number,
                  underlineColor: Colors.amber,
                  length: 6,
                  fullBorder: true,
                  cursorColor: Colors.blue,
                  onCompleted: (String value) {},
                  onEditing: (bool value) {
                    setState(() {
                      _onEditing = value;
                    });
                    if (!_onEditing) FocusScope.of(context).unfocus();
                  },
                ),
                const SizedBox(height: 40),
                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Verify",
                    ),
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Didn't receive an OTP? Resend",
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
