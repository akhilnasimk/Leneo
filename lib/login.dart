import 'package:firstproject/forgot.dart';
import 'package:firstproject/home.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    backgroundColor: Colors.black, // Set the background color to black
    body: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children:
    [
    Image.asset(
    'assets/img.jpg',

    width: 150,
    height: 150,

    ),
    const Text(
    'Log in to Lea\'neo',
    style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.white, // Ensure text color is white for better contrast
    ),
    ),
    const SizedBox(height: 16),
    const Text(
    'Welcome back! Sign in using your email to continue',
    style: TextStyle(
    fontSize: 16,
    color: Colors.white,
    ),
    ),
    const SizedBox(height: 32),
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 32),
    child: Column(
    children:
    [
    TextFormField(
    decoration: const InputDecoration(
    hintText:
    'Your email',
    border: OutlineInputBorder(),
    hintStyle: TextStyle(color: Colors.white),
    ),
    ),
    const SizedBox(height: 16),
    TextFormField(
    decoration: const InputDecoration(suffixStyle: TextStyle(color: Colors.blue),
    hintText: 'Password',
    hintStyle: TextStyle(color: Colors.white),
    border: OutlineInputBorder(),

    ),
    ),
    const SizedBox(height: 32),
    ElevatedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Home(),
        ),
      );
    },
    child: const Text('Log in'),
    ),
    const SizedBox(height: 16),
    TextButton(
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => Forgot(),
    ),
    );
    },
    child: const Text('Forgot password?'),
    ),
    ],
    ),
    ),
    ],
    ),
    ),
    );
  }
}