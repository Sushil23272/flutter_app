import 'package:flutter/material.dart';
import 'package:flutter_chat/components/my_buttan.dart';
import 'package:flutter_chat/components/my_text_from_field.dart';

class Register extends StatefulWidget {
  final void Function()? ontap;
  const Register({
    super.key,
    required this.ontap,
  });
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController PasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

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
                'Welcome! Lets create a new account for you',
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
              MyTextFromField(
                hintText: ' Confirm Password',
                isObsecureText: true,
                controller: confirmPasswordController,
              ),
              const SizedBox(
                height: 30,
              ),
              MyButton(title: 'Register ', onTap: () {}),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already a member ?'),
                  GestureDetector(
                    onTap: widget.ontap,
                    child: Text(
                      'Login',
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
