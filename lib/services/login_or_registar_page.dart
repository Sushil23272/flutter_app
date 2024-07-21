import 'package:flutter/material.dart';
import 'package:flutter_chat/pages/login_pages.dart';
import 'package:flutter_chat/pages/register_page.dart';

class LoginOrRegistarPage extends StatefulWidget {
  const LoginOrRegistarPage({super.key});

  @override
  State<LoginOrRegistarPage> createState() => _LoginOrRegistarPageState();
}

class _LoginOrRegistarPageState extends State<LoginOrRegistarPage> {
  bool showLoginpage = true;

  void togglePage() {
    setState(() {
      showLoginpage = !showLoginpage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginpage) {
      return LoginPage(onTap: togglePage);
    } else {
      return Register(ontap: togglePage);
    }
  }
}
