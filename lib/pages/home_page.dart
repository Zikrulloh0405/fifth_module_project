import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI'),
        titleTextStyle: TextStyle(fontSize: 25),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _titleStyle('User  ', Colors.red),
            _titleStyle('Interface', Colors.green)
          ],
        ),
      ),
    );
  }
}

Widget _titleStyle(String text, Color color) {
  return Text(text,
      style: TextStyle(
        fontSize: 25,
        color: color,
      ));
}
