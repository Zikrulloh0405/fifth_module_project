import 'package:fifth_module_project/widgets/register_page_widgets.dart';
import 'package:fifth_module_project/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AmazonUIPage extends StatefulWidget {
  const AmazonUIPage({super.key});
  static const String id = "amazon_ui";

  @override
  State<AmazonUIPage> createState() => _AmazonUIPageState();
}

class _AmazonUIPageState extends State<AmazonUIPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: amazonColor,
        title: Image.network(
          "https://github.com/kurbanovxurshidbek/pdp_ui7_amazon/blob/master/assets/images/amazon_logo.png?raw=true",
          fit: BoxFit.cover,
          height: 100,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: icons(Icons.mic)),
          IconButton(onPressed: () {}, icon: icons(Icons.shopping_cart)),
        ],
      ),
      drawer: const Drawer(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.grey[300],
        child: Column(
          children: [
            //! #search
            Container(
              height: 60,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(color: amazonColor),
              child: Container(
                padding: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: icons(Icons.search, color: amazonColor),
                            hintText: 'What are you looking for?',
                            hintStyle: const TextStyle(
                                color: Colors.grey, fontSize: 18)),
                      ),
                    ),
                    icons(Icons.camera_alt, color: amazonColor)
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(children: [
                Container(
                  height: 50,
                  color: Colors.blueGrey,
                  child: Row(
                    children: [
                      space(false, 15),
                      icons(Icons.location_on, color: Colors.white, size: 28),
                      text('  Deliver to Korea, Republic of', Colors.white,
                          fontSize: 18)
                    ],
                  ),
                ),
                //! #delivery
                Container(
                  // height: 150,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 150,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/amazon_delivery.jpeg"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(70),
                                  bottomRight: Radius.circular(70))),
                        ),
                      ),
                      Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          width: 180,
                          child: text(
                              'We ship 45million products', Colors.black,
                              fontSize: 18))
                    ],
                  ),
                ),
                space(true, 10),
                //! #signIn
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  color: Colors.white,
                  height: 160,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      text('Sign In for best experiences', Colors.black,
                          fontSize: 18),
                      MaterialButton(
                        onPressed: () {},
                        color: Colors.amber,
                        minWidth: double.infinity,
                        height: 40,
                        child: text('Sign In', Colors.black, fontSize: 18),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: text('Create an account', Colors.blue,
                              fontSize: 18))
                    ],
                  ),
                ),
                space(true, 10),
                //! #dealOfTheDay
                Container(
                  padding: const EdgeInsets.all(20),
                  color: Colors.white,
                  // height: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      text('Deal of the Day', Colors.black,
                          fontSize: 25, fontWeight: FontWeight.w500),
                      space(true, 15),
                      Image.asset(
                        "assets/images/image_1.jpeg",
                        // height:
                        fit: BoxFit.cover,
                      ),
                      space(true, 20),
                      text(
                          'Up to 31% off APC UPS Battery Back \n \$10.99 - \$79.9',
                          Colors.black,
                          fontSize: 17.5),
                    ],
                  ),
                ),
                space(true, 10),
                Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.white,
                  height: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      text('The Products in Camera', Colors.black,
                          fontSize: 20, fontWeight: FontWeight.w500),
                      space(true, 15),
                      Expanded(
                          child: Container(
                        // color: Colors.amber,
                        child: Image.asset(
                          "assets/images/image_3.png",
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      )),
                      space(true, 5),
                      Expanded(
                          child: Row(
                        children: [
                          Expanded(
                              child: Container(
                            // color: Colors.black,
                            child: Image.asset(
                              "assets/images/image_4.jpg",
                              fit: BoxFit.cover,
                            ),
                          )),
                          space(false, 5),
                          Expanded(
                              child: Container(
                            // color: Colors.yellow,
                            child: Image.asset(
                              "assets/images/image_5.jpg",
                              fit: BoxFit.cover,
                            ),
                          )),
                        ],
                      ))
                    ],
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}

Color amazonColor = const Color(0xFF018197);
