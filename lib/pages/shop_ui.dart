import 'package:fifth_module_project/widgets/register_page_widgets.dart';
import 'package:fifth_module_project/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ShopUI extends StatefulWidget {
  const ShopUI({super.key});

  static const String id = "shop_ui";

  @override
  State<ShopUI> createState() => _ShopUIState();
}

class _ShopUIState extends State<ShopUI> {
  final List<String> _listItem = [
    'assets/images/image_1.jpeg',
    'assets/images/image_2.jpg',
    'assets/images/image_3.png',
    'assets/images/image_4.jpg',
    'assets/images/image_5.jpg',
    'assets/images/image_1.jpeg',
    'assets/images/image_2.jpg',
    'assets/images/image_3.png',
    'assets/images/image_4.jpg',
    'assets/images/image_5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.orange,
          leading: Padding(
            padding: const EdgeInsets.all(10),
            child: icons(Icons.menu, color: Colors.white, size: 25),
          ),
          title: text('Apple Products', Colors.white),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 36,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.yellow[900]),
                child: Center(child: text('3', Colors.white, fontSize: 25)),
              ),
            )
          ]),
      body: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            //! #header
            Container(
              width: double.infinity,
              height: 260,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.black,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/image_4.jpg"))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  text('Lifestyle sale', Colors.white, fontSize: 35),
                  space(true, 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 45),
                    child: textButton(
                      title: 'Shop Now',
                      buttonColor: Colors.white,
                      textColor: Colors.black,
                      radius: 10,
                    ),
                  ),
                  space(true, 30)
                ],
              ),
            ),
            space(true, 10),
            //! #grid view
            Expanded(
                child: GridView.count(
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              crossAxisCount: 1,
              children: _listItem.map((item) => _gridViewList(item)).toList(),
            ))
          ],
        ),
      ),
    );
  }
}

Widget _gridViewList(String item) {
  return Container(
    width: double.infinity,
    height: 240,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.transparent,
        image: DecorationImage(image: AssetImage(item), fit: BoxFit.cover)),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [icons(Icons.favorite, size: 28, color: Colors.red)]),
    ),
  );
}
