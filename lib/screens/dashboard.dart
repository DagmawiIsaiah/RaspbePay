import 'package:flutter/material.dart';

import 'package:myapp/constants.dart';
import 'package:myapp/widgets/change_password_view.dart';
import '../widgets/widgets.dart';

class DashboardScreen extends StatelessWidget {
  static const String routeName = '/dashboard';

  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> accounts = ["Awash", "Abissiniya"];

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
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dashboard",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            Text(
                              "Edit profile and app settings",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: Colors.black.withOpacity(0.8),
                                  ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.logout_rounded),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    CustomListTile(
                      title: "Display name",
                      subtitle: "RaspbePay account number",
                      trailing: Icon(Icons.edit_outlined),
                      leading: CircleAvatar(
                        radius: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Text(
                        "Your connected wallet and accounts",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
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
                                      Text(
                                        "Add",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium!
                                            .copyWith(fontSize: 14),
                                      ),
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
                    const SizedBox(height: 10),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Text(
                        "Security settings",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    const ChangePasswordView(),
                    const SizedBox(height: 10),
                    const DeleteAccountView(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Text(
                        "App settings",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    CustomListTile(
                      title: "Enable dark mode",
                      subtitle: "Use this to change the theme",
                      trailing: Switch(
                        value: false,
                        onChanged: (value) {},
                      ),
                      leading: null,
                    ),
                    CustomListTile(
                      title: "Feedback",
                      subtitle: "Send a feedback",
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                      leading: null,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Text(
                        "App info",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    CustomListTile(
                      title: "App version",
                      subtitle: "Build v1.0.1",
                      trailing: null,
                      leading: null,
                    ),
                    const SizedBox(height: 10),
                    CustomListTile(
                      title: "Developer",
                      subtitle: "dagmawiisaiah.dev@gmail.com",
                      trailing: null,
                      leading: null,
                    ),
                  ],
                ),
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
}
