import 'package:firstproject/login.dart';
import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext
  context) {
  return MaterialApp(
  debugShowCheckedModeBanner: false,
  home: const SplashScreen(),
    routes: {

    },
  );
  }
}

class
SplashScreen extends StatefulWidget {
const SplashScreen({super.key});

@override
_SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override

void initState() {
super.initState();
Timer(const Duration(seconds:
5), () {
Navigator.pushReplacement(
context,
MaterialPageRoute(builder: (context) =>  Login()
),
);
});
}

@override
Widget build(BuildContext context) {
return
 Scaffold(
  body: Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/app.jpg'),
        fit: BoxFit.cover,
      ),
    ),
  ),
);
}
}


