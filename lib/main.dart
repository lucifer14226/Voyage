import 'package:fease/model/destination_model.dart';
import 'package:fease/views/destination_view.dart';
import 'package:fease/views/home_view.dart';
import 'package:fease/views/login.dart';
import 'package:fease/views/signup._view.dart';
import 'package:fease/views/verifyemail_view.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sample login page',
      theme: ThemeData(
          primaryColor: const Color(0x0ff3bace),
          scaffoldBackgroundColor: const Color(0XFFF3F5F7)),
      home: const SignupPage(),
      routes: {
        'LoginRoutes': (context) => const LoginPage(),
        'SignupRoutes': (context) => const SignupPage(),
        'VerifyEmailRoutes': (context) => const VerifyEmail(),
        'Homepage': (context) => const Homepage(),
      },
    );
  }
}
