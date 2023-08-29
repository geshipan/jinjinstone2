import 'package:flutter/material.dart';
import 'package:flutter_application_1/api/index.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final emailController = TextEditingController();

  void signUp() async {
    final email = emailController.text;
    await userApi.signUp(email);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('회원 가입')),
      body: Center(
        child: Column(children: [
          TextField(
              controller: emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              )),
          MouseRegion(
              cursor: SystemMouseCursors.text,
              child: GestureDetector(
                onTap: () {
                  signUp();
                },
                child: Container(
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    '회원가입 신청',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ))
        ]),
      ),
    );
  }
}
