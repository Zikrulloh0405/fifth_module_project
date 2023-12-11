import 'package:fifth_module_project/pages/home_page.dart';
import 'package:fifth_module_project/pages/utils/strings.dart';
import 'package:fifth_module_project/widgets/register_page_widgets.dart';
import 'package:fifth_module_project/widgets/widgets.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  static const String id = "intro_page";

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  late PageController _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(alignment: Alignment.bottomRight, children: [
        PageView(
          onPageChanged: (page) {
            setState(() {
              currentIndex = page;
            });
          },
          controller: _pageController,
          // mainAxisAlignment: MainAxisAlignment.center
          children: <Widget>[
            //! #viewPage
            _viewPages(
                image: "assets/images/image_1 (1).png",
                title: Strings.stepOneTitle,
                content: Strings.stepOneContent),
            _viewPages(
                image: "assets/images/image_2.png",
                title: Strings.stepTwoTitle,
                content: Strings.stepTwoContent),
            _viewPages(
                image: "assets/images/image_3 (1).png",
                title: Strings.stepThreeTitle,
                content: Strings.stepThreeContent),
          ],
        ),
        //! #controller
        Container(
          margin: EdgeInsets.only(bottom: 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _buildIndictor(),
          ),
        ),
        Container(
            margin: const EdgeInsets.only(right: 10, bottom: 40),
            width: 100,
            height: 50,
            // color: Colors.grey,
            child: currentIndex == 2
                ? Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, HomePage.id);
                      },
                      child: text('Skip', Colors.red, fontSize: 20),
                    ),
                  )
                : space(true, 2)),
      ]),
    );
  }

  Widget _viewPages(
      {required String image, required String title, required String content}) {
    return Container(
      padding: const EdgeInsets.only(left: 50, bottom: 60, right: 50),
      // color: Colors.amber,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: <Widget>[
              text(title, Colors.red,
                  fontSize: 30, fontWeight: FontWeight.bold),
              space(true, 10),
              text(content, Colors.grey,
                  fontSize: 20, alignText: TextAlign.center),
              space(true, 10),
              Image(image: AssetImage(image)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _indicator(
    bool isActive,
  ) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 6),
      height: 6,
      width: isActive ? 30 : 6,
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(30)),
    );
  }

  List<Widget> _buildIndictor() {
    List<Widget> indicators = [];
    for (var i = 0; i < 3; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }

    return indicators;
  }
}
