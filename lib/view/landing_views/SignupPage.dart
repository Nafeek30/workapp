import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SignUpPageState();
  }
}

class SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            const Text('Sign up'),
            const TextField(),
            const TextField(),
            ElevatedButton(
              onPressed: () {
                print('sign up clicked');
              },
              child: const Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
