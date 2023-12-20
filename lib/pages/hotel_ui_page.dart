import 'package:fifth_module_project/widgets/register_page_widgets.dart';
import 'package:fifth_module_project/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HotelsPageUI extends StatefulWidget {
  const HotelsPageUI({super.key});

  static const String id = "hotels_page_ui";
  @override
  State<HotelsPageUI> createState() => _HotelsPageUIState();
}

class _HotelsPageUIState extends State<HotelsPageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image:
                        AssetImage("assets/images/ic_hotels_page_header.jpg"),
                    fit: BoxFit.cover),
              ),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.4)
                    ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    text('Best Hotels Ever', Colors.white,
                        fontSize: 35, fontWeight: FontWeight.bold),
                    // space(true, 20),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 40),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: icons(Icons.search),
                            hintText: 'Search for Hotels ...',
                            hintStyle: TextStyle(fontSize: 19)),
                      ),
                    ),
                    // space(side, size)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  text('  Business Hotels  ', Colors.black,
                      fontSize: 23, fontWeight: FontWeight.bold),
                  space(true, 15),
                  Container(
                    height: 230,
                    // color: Colors.amber,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _imageView(
                            images: "assets/images/ic_hotels_1.jpg",
                            nameOfHotel: 'Hotel 1',
                            icon: Icons.favorite),
                        _imageView(
                            images: "assets/images/ic_hotels_2.jpg",
                            nameOfHotel: 'Hotel 2',
                            icon: Icons.favorite),
                        _imageView(
                            images: "assets/images/ic_hotels_3.jpg",
                            nameOfHotel: 'Hotel 3',
                            icon: Icons.favorite),
                        _imageView(
                            images: "assets/images/ic_hotels_4.jpg",
                            nameOfHotel: 'Hotel 4',
                            icon: Icons.favorite),
                        _imageView(
                            images: "assets/images/ic_hotels_5.jpg",
                            nameOfHotel: 'Hotel 5',
                            icon: Icons.favorite),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  text('  Airport Hotels  ', Colors.black,
                      fontSize: 23, fontWeight: FontWeight.bold),
                  space(true, 15),
                  Container(
                    height: 230,
                    // color: Colors.amber,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _imageView(
                            images: "assets/images/ic_hotels_5.jpg",
                            nameOfHotel: 'Hotel 1',
                            icon: Icons.favorite),
                        _imageView(
                            images: "assets/images/ic_hotels_4.jpg",
                            nameOfHotel: 'Hotel 2',
                            icon: Icons.favorite),
                        _imageView(
                            images: "assets/images/ic_hotels_3.jpg",
                            nameOfHotel: 'Hotel 3',
                            icon: Icons.favorite),
                        _imageView(
                            images: "assets/images/ic_hotels_2.jpg",
                            nameOfHotel: 'Hotel 4',
                            icon: Icons.favorite),
                        _imageView(
                            images: "assets/images/ic_hotels_1.jpg",
                            nameOfHotel: 'Hotel 5',
                            icon: Icons.favorite),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  text('  Resort Hotels  ', Colors.black,
                      fontSize: 23, fontWeight: FontWeight.bold),
                  space(true, 15),
                  Container(
                    height: 230,
                    // color: Colors.amber,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _imageView(
                            images: "assets/images/ic_hotels_3.jpg",
                            nameOfHotel: 'Hotel 1',
                            icon: Icons.favorite),
                        _imageView(
                            images: "assets/images/ic_hotels_5.jpg",
                            nameOfHotel: 'Hotel 2',
                            icon: Icons.favorite),
                        _imageView(
                            images: "assets/images/ic_hotels_1.jpg",
                            nameOfHotel: 'Hotel 3',
                            icon: Icons.favorite),
                        _imageView(
                            images: "assets/images/ic_hotels_4.jpg",
                            nameOfHotel: 'Hotel 4',
                            icon: Icons.favorite),
                        _imageView(
                            images: "assets/images/ic_hotels_2.jpg",
                            nameOfHotel: 'Hotel 5',
                            icon: Icons.favorite),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _imageView(
      {required String images,
      required String nameOfHotel,
      required IconData icon}) {
    return AspectRatio(
      aspectRatio: 1.1 / 1.1,
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        height: 250,
        width: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(image: AssetImage(images), fit: BoxFit.cover)),
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.4),
                Colors.black.withOpacity(.2),
              ])),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              text(nameOfHotel, Colors.white, fontSize: 23),
              icons(icon, color: Colors.red, size: 30)
            ],
          ),
        ),
      ),
    );
  }
}
