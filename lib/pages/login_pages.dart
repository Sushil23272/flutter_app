import 'package:flutter/material.dart';
import 'package:flutter_chat/components/my_buttan.dart';
import 'package:flutter_chat/components/my_text_from_field.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key, required this.onTap});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController PasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.message,
                size: 80,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Welcome back ! Please login your account',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              MyTextFromField(
                hintText: 'Email',
                isObsecureText: false,
                controller: emailController,
              ),
              const SizedBox(
                height: 30,
              ),
              MyTextFromField(
                hintText: 'Password',
                isObsecureText: true,
                controller: PasswordController,
              ),
              const SizedBox(
                height: 30,
              ),
              MyButton(title: 'sign in', onTap: () {}),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not a member ?'),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      'Register',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
