import 'package:fifth_module_project/pages/home_page.dart';
import 'package:fifth_module_project/pages/registration/log_in_page.dart';
import 'package:fifth_module_project/pages/registration/sign_up_page.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.blue),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SignUpPage(),
      routes: {
        HomePage.id: (context) => HomePage(),
        LogInPage.id: (context) => LogInPage(),
        SignUpPage.id: (context) => SignUpPage()
      },
    );
  }
}
