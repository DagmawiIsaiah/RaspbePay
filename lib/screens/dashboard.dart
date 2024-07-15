import 'package:flutter/material.dart';

import 'package:myapp/constants.dart';
import '../widgets/widgets.dart';

class DashboardScreen extends StatelessWidget {
  static const String routeName = '/dashboard';

  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 16,
                ),
                color: Colors.grey[300],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customTile(
                      "Dashboard",
                      "Edit profile and app settings",
                      const Icon(Icons.logout),
                      null,
                    ),
                    customTile(
                      "Display name",
                      "RaspbePay account number",
                      Icon(Icons.edit_outlined),
                      CircleAvatar(
                        radius: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Text("Your connected wallet and accounts"),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 65,
                      child: ListView.separated(
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return (index == 0)
                              ? Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[400],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 10,
                                  ),
                                  child: Column(
                                    children: [
                                      Icon(Icons.add),
                                      Text("Add"),
                                    ],
                                  ),
                                )
                              : const AccountCard();
                        },
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: 16),
                        itemCount: 5,
                      ),
                    ),
                  ],
                ),
              ),
              Text("Security settings"),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 16,
                ),
                child: customTile(
                  "Change password",
                  null,
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                  ),
                  null,
                ),
              ),
              Text("App settings"),
              customTile(
                "Enable dark mode",
                "Use this to change the theme",
                Switch(
                  value: false,
                  onChanged: (value) {},
                ),
                null,
              ),
              customTile(
                "Enable dark mode",
                "Use this to change the theme",
                Icon(Icons.arrow_forward_ios_rounded),
                null,
              ),
              Text("App info"),
              customTile(
                "App version",
                "Build v1.0.1",
                null,
                null,
              ),
              customTile(
                "Developer",
                "dagmawiisaiah.dev@gmail.com",
                null,
                null,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 16, bottom: 16),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(homeRoute);
          },
          child: const Icon(Icons.arrow_back),
        ),
      ),
    );
  }

  Widget customTile(
    String title,
    String? subtitle,
    Widget? trailing,
    Widget? leading,
  ) {
    return Row(
      children: [
        if (leading != null) leading,
        if (leading != null) const SizedBox(width: 10),
        (subtitle != null)
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title),
                  Text(subtitle),
                ],
              )
            : Text(title),
        const Spacer(),
        if (trailing != null) IconButton(
          onPressed: () {},
          icon: trailing,
        ),
      ],
    );
  }
}
