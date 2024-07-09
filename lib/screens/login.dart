import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/login';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        primary: true,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image.asset(
              "assets/images/vector.png",
              fit: BoxFit.cover,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 20,
              ),
              width: size.width,
              height: size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  Text(
                    'Log In',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    'Enter your credentials to access Raspbepay',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 40),
                  Form(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Email',
                            border: OutlineInputBorder(),
                          ),
                          style: Theme.of(context).textTheme.bodyLarge,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.emailAddress,
                          controller: _emailController,
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Password',
                            border: OutlineInputBorder(),
                          ),
                          style: Theme.of(context).textTheme.bodyLarge,
                          obscureText: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null;
                          },
                          controller: _passwordController,
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                  const SizedBox(height: 60),
                  SizedBox(
                    width: size.width,
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your login logic here
                      },
                      child: const Text('Log In'),
                    ),
                  ),
                  SizedBox(
                    width: size.width,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Don't have an account? Sign Up",
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
