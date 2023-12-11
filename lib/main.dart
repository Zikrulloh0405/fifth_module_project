import 'package:fifth_module_project/pages/home_page.dart';
import 'package:fifth_module_project/pages/intro_page.dart';
import 'package:fifth_module_project/pages/registration/log_in_page.dart';
import 'package:fifth_module_project/pages/registration/sign_up_page.dart';
import 'package:fifth_module_project/pages/shop_ui.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.blue),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const IntroPage(),
      routes: {
        IntroPage.id: (context) => IntroPage(),
        HomePage.id: (context) => HomePage(),
        LogInPage.id: (context) => LogInPage(),
        SignUpPage.id: (context) => SignUpPage(),
        ShopUI.id: (context) => ShopUI()
      },
    );
  }
}
