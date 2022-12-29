import 'package:drugland_app/utilities/Constants.dart';
import 'package:drugland_app/view/landing_views/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  /// Firebase configuration code
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  /// Then run the app
  runApp(const DruglandApp());
}

class DruglandApp extends StatelessWidget {
  const DruglandApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Constants.druglandBlue,
      ),
      home: const LoginPage(),
    );
  }
}
