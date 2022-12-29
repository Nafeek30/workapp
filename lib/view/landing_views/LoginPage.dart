import 'package:drugland_app/view/app_views/HomePage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            const Text('Login'),
            const TextField(),
            const TextField(),
            ElevatedButton(
              onPressed: () {
                print('login clicked');
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => HomePage()));
              },
              child: const Text('Login'),
            ),
            const Text('Don\'t have an  account?   Sign up'),
          ],
        ),
      ),
    );
  }
}
