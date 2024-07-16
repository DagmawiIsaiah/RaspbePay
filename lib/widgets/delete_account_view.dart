import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class DeleteAccountView extends StatefulWidget {
  const DeleteAccountView({super.key});

  @override
  State<DeleteAccountView> createState() => _DeleteAccountViewState();
}

class _DeleteAccountViewState extends State<DeleteAccountView> {
  bool _onEditing = false;

  @override
  Widget build(BuildContext context) {
    List<String> accounts = ["Awash", "Abissiniya"];
    Size size = MediaQuery.of(context).size;

    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 32,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Delete Account",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  "Delete your raspbepay account",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                  ),
                  child: Text(
                    "Your account balance is 250ETB chose account to withdrawal",
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: DropdownMenu(
                    width: size.width - 64,
                    initialSelection: 0,
                    onSelected: (value) {},
                    dropdownMenuEntries: [
                      ...accounts
                          .map(
                            (account) => DropdownMenuEntry(
                              value: accounts.indexOf(account),
                              label: account,
                            ),
                          )
                          .toList(),
                    ],
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => SingleChildScrollView(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 32,
                              vertical: 32,
                            ),
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
                                  textStyle:
                                      Theme.of(context).textTheme.bodyLarge!,
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
                                    if (!_onEditing)
                                      FocusScope.of(context).unfocus();
                                  },
                                ),
                                const SizedBox(height: 100),
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
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    child: Text("Delete Account"),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        child: Row(
          children: [
            Text(
              "Delete Account",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const Spacer(),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}
