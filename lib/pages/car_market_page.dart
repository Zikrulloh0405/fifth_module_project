import 'package:fifth_module_project/widgets/register_page_widgets.dart';
import 'package:fifth_module_project/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CarMarketPage extends StatefulWidget {
  const CarMarketPage({super.key});
  static const String id = "car_market_page";
  @override
  State<CarMarketPage> createState() => _CarMarketPageState();
}

class _CarMarketPageState extends State<CarMarketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: null,
        title:
            text('Cars', Colors.red, fontSize: 28, fontWeight: FontWeight.bold),
        actions: [
          icons(Icons.notifications_none, color: Colors.red, size: 25),
          space(false, 20),
          icons(Icons.shopping_cart, color: Colors.red, size: 25),
          space(false, 15),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                // color: Colors.amber,
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _categoriesList(type: true, title: 'All'),
                    _categoriesList(type: true, title: 'Red'),
                    _categoriesList(type: false, title: 'Green'),
                    _categoriesList(type: false, title: 'Yellow'),
                    _categoriesList(type: false, title: 'Black'),
                  ],
                ),
              ),
              space(true, 10),
              _maketList(
                  image: "assets/images/im_car1.jpg",
                  title: 'PDP Car',
                  typeOfCar: 'Electric',
                  price: '1.000.000\$'),
              _maketList(
                  image: "assets/images/im_car2.jpg",
                  title: 'PDP Car',
                  typeOfCar: 'Electric',
                  price: '1.000.000\$'),
              _maketList(
                  image: "assets/images/im_car3.jpg",
                  title: 'PDP Car',
                  typeOfCar: 'Electric',
                  price: '1.000.000\$'),
              _maketList(
                  image: "assets/images/im_car4.png",
                  title: 'PDP Car',
                  typeOfCar: 'Electric',
                  price: '1.000.000\$'),
              _maketList(
                  image: "assets/images/im_car5.jpg",
                  title: 'PDP Car',
                  typeOfCar: 'Electric',
                  price: '1.000.000\$'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _categoriesList({required bool type, required String title}) {
    return AspectRatio(
      aspectRatio: 2.2 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
            color: type ? Colors.red : Colors.white,
            borderRadius: BorderRadius.circular(20)),
        child: Center(
            child: text(title, type ? Colors.white : Colors.red,
                fontSize: type ? 20 : 18)),
      ),
    );
  }

  Widget _maketList({
    required String image,
    required String title,
    required String typeOfCar,
    required String price,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      width: double.infinity,
      height: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.grey[400]!, blurRadius: 10, offset: Offset(0, 10))
          ],
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0.2),
            ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    text(title, Colors.white,
                        fontSize: 25, fontWeight: FontWeight.bold),
                    text(price, Colors.white,
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ],
                ),
                space(false, 5),
                text(
                  typeOfCar,
                  Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            Container(
              width: 35,
              height: 35,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.red),
              child: icons(Icons.favorite_border, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
