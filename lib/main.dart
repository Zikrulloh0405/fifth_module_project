import 'package:fifth_module_project/pages/amazon_ui.dart';
import 'package:fifth_module_project/pages/hotel_ui_page.dart';
import 'package:fifth_module_project/pages/party_ui.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      title: 'Fifth Module',
      home: const AmazonUIPage(),
      routes: {HotelsPageUI.id: (context) => const HotelsPageUI()},
    );
  }
}
