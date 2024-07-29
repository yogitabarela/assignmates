import 'package:flutter/material.dart';
import 'welcomescreen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Assignmates',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color.fromARGB(255, 11, 74, 15),
          secondary: const Color.fromARGB(255, 87, 34, 3),
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        ),
      ),
      home: WelcomeScreen(),
    );
  }
}
