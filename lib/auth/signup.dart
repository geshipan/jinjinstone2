import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key, required this.email});

  final String email;

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('회원 가입')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('회원 가입 페이지'),
          ],
        ),
      ),
    );
  }
}
